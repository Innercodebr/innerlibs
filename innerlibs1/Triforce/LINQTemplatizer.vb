﻿Imports System.Collections.ObjectModel
Imports System.Collections.Specialized
Imports System.Data.Common
Imports System.Data.Linq
Imports System.Globalization
Imports System.IO
Imports System.Linq.Expressions
Imports System.Reflection
Imports System.Text.RegularExpressions

Imports InnerLibs.HtmlParser
Imports InnerLibs.LINQ

Namespace Triforce

    Namespace ADO

        Public Class Triforce(Of ConnectionType As DbConnection)
            Inherits Triforce

            Friend Connection As ConnectionType

            Property ConnectionString As String

            ''' <summary>
            ''' Instancia um novo <see cref="LINQ"/> a partir de um Diretório
            ''' </summary>
            ''' <param name="TemplateDirectory">Diretório contendo os arquivos HTML</param>

            Sub New(TemplateDirectory As DirectoryInfo, ConnectionString As String, ParamArray Selectors As String())
                MyBase.New(TemplateDirectory, Selectors)
                Me.Connection = Activator.CreateInstance(Of ConnectionType)
                Me.ConnectionString = ConnectionString
            End Sub

            ''' <summary>
            ''' Instancia um novo <see cref="LINQ"/> a partir de um Assembly
            ''' </summary>
            ''' <param name="ApplicationAssembly">
            ''' Assembly contendo os arquivos HTML. Os arquivos HTML devem ser marcados como EMBEDDED RESOURCE
            ''' </param>
            Sub New(ApplicationAssembly As Assembly, ConnectionString As String, ParamArray Selectors As String())
                MyBase.New(ApplicationAssembly, Selectors)
                Me.Connection = Activator.CreateInstance(Of ConnectionType)
                Me.ConnectionString = ConnectionString
            End Sub

            ''' <summary>
            ''' Executa uma query SQL e retorna um <see cref="IEnumerable"/> com os resultados (É um
            ''' wrapper para <see cref="DbCommand.ExecuteReader()"/>
            ''' porém aplica os templates automaticamente
            ''' </summary>
            ''' <typeparam name="T">Tipo do Objeto</typeparam>
            ''' <param name="SQLQuery">  </param>
            ''' <param name="Parameters"></param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)(SQLQuery As String, Template As String, Parameters As IEnumerable(Of Object), Optional PageNumber As Integer = 1, Optional PageSize As Integer = 0) As TemplatePage(Of T)
                Dim l As List(Of T)
                Using con As DbConnection = Activator.CreateInstance(Of ConnectionType)
                    con.ConnectionString = Me.ConnectionString
                    con.Open()
                    Dim command As DbCommand = con.CreateCommand()
                    command.CommandText = SQLQuery
                    Using Reader As DbDataReader = command.ExecuteReader()
                        l = Reader.Map(Of T)
                    End Using
                End Using
                Return ApplyTemplate(l, PageNumber, PageSize, Template)
            End Function

            ''' <summary>
            ''' Executa uma query SQL e retorna um <see cref="IEnumerable"/> com os resultados (É um
            ''' wrapper para <see cref="DbCommand.ExecuteReader()"/>
            ''' porém aplica os templates automaticamente
            ''' </summary>
            ''' <param name="SQLQuery">  </param>
            ''' <param name="Parameters"></param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(SQLQuery As String, Template As String, Parameters As IEnumerable(Of Object), Optional PageNumber As Integer = 1, Optional PageSize As Integer = 0) As TemplatePage(Of Dictionary(Of String, Object))
                Return ApplyTemplate(Of Dictionary(Of String, Object))(SQLQuery, Template, Parameters, PageNumber, PageSize)
            End Function

        End Class

    End Namespace

    Namespace LINQ

        ''' <summary>
        ''' Permite integrar <see cref="Triforce"/> a objetos LINQ to SQL
        ''' </summary>
        ''' <typeparam name="DataContextType">Objeto LINQ to SQL gerado</typeparam>
        Public Class Triforce(Of DataContextType As DataContext)
            Inherits Triforce

            Friend DataContext As DataContextType

            ''' <summary>
            ''' Instancia um novo <see cref="LINQ"/> a partir de um Diretório
            ''' </summary>
            ''' <param name="TemplateDirectory">Diretório contendo os arquivos HTML</param>

            Sub New(TemplateDirectory As DirectoryInfo, ParamArray Selectors As String())
                MyBase.New(TemplateDirectory, Selectors)
                Me.DataContext = Activator.CreateInstance(Of DataContextType)
            End Sub

            ''' <summary>
            ''' Instancia um novo <see cref="LINQ"/> a partir de um Assembly
            ''' </summary>
            ''' <param name="ApplicationAssembly">
            ''' Assembly contendo os arquivos HTML. Os arquivos HTML devem ser marcados como EMBEDDED RESOURCE
            ''' </param>
            Sub New(ApplicationAssembly As Assembly, ParamArray Selectors As String())
                MyBase.New(ApplicationAssembly, Selectors)
                Me.DataContext = Activator.CreateInstance(Of DataContextType)
            End Sub

            ''' <summary>
            ''' Aplica um template a uma busca determinada pelo tipo de objeto
            ''' </summary>
            ''' <typeparam name="T">Tipo de objeto</typeparam>
            ''' <param name="PageNumber">Pagina atual</param>
            ''' <param name="PageSize">  Numero de itens por pagina</param>
            ''' <param name="predicade"> Filtro da busca</param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)(predicade As Expression(Of Func(Of T, Boolean)), Optional PageNumber As Integer = 0, Optional PageSize As Integer = 0) As TemplatePage(Of T)
                Return ApplyTemplate(Of T)(GetTemplate(Of T), predicade, PageNumber, PageSize)
            End Function

            ''' <summary>
            ''' Aplica um template a uma busca determinada pelo tipo de objeto
            ''' </summary>
            ''' <typeparam name="T">Tipo de objeto</typeparam>
            ''' <param name="PageNumber">Pagina atual</param>
            ''' <param name="PageSize">  Numero de itens por pagina</param>
            ''' <param name="predicade"> Filtro da busca</param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)(Template As String, Optional predicade As Expression(Of Func(Of T, Boolean)) = Nothing, Optional PageNumber As Integer = 0, Optional PageSize As Integer = 0) As TemplatePage(Of T)
                Me.DataContext = Activator.CreateInstance(Of DataContextType)
                Using Me.DataContext
                    Dim d As IQueryable(Of T) = Me.DataContext.GetTable(Of T).AsQueryable
                    If predicade IsNot Nothing Then
                        d = d.Where(predicade)
                    End If
                    Return ApplyTemplate(d, PageNumber, PageSize, Template)
                End Using
            End Function

            ''' <summary>
            ''' Aplica um template HTML a um unico objeto
            ''' </summary>
            ''' <typeparam name="T">TIpo de objeto usado como fonte dos dados</typeparam>
            ''' <param name="Item">    Objeto</param>
            ''' <param name="Template">Template HTML ou nome do template HTML</param>
            Public Overrides Function ApplyTemplate(Of T As Class)(Item As T, Optional Template As String = "", Optional DataIndex As Integer = 0) As Template(Of T)
                Return MyBase.ApplyTemplate(Item, Template, 0)
            End Function

            ''' <summary>
            ''' Executa uma query SQL e retorna um <see cref="IEnumerable"/> com os resultados (É um
            ''' wrapper para <see cref="DataContext.ExecuteQuery(Of TResult)(String, Object())"/>
            ''' porém aplica os templates automaticamente
            ''' </summary>
            ''' <typeparam name="T">Tipo do Objeto</typeparam>
            ''' <param name="SQLQuery">  </param>
            ''' <param name="Parameters"></param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)(SQLQuery As String, Template As String, Parameters As IEnumerable(Of Object), Optional PageNumber As Integer = 1, Optional PageSize As Integer = 0) As TemplatePage(Of T)
                Dim list As IQueryable(Of T)
                Me.DataContext = Activator.CreateInstance(Of DataContextType)
                Using Me.DataContext
                    If GetType(T) = GetType(Dictionary(Of String, Object)) Then
                        Dim con As DbConnection = Activator.CreateInstance(Me.DataContext.Connection.GetType)
                        con.ConnectionString = Me.DataContext.Connection.ConnectionString
                        con.Open()
                        Dim command As DbCommand = con.CreateCommand()
                        command.CommandText = SQLQuery
                        Using Reader As DbDataReader = command.ExecuteReader()
                            Dim l As New List(Of Dictionary(Of String, Object))
                            While Reader.Read
                                Dim d As New Dictionary(Of String, Object)
                                For i As Integer = 0 To Reader.FieldCount - 1
                                    d.Add(Reader.GetName(i), Reader(Reader.GetName(i)))
                                Next
                                l.Add(d)
                            End While
                            list = l.AsQueryable
                            Reader.Dispose()
                        End Using
                        con.Close()
                    Else
                        list = DataContext.ExecuteQuery(Of T)(SQLQuery, If(Parameters, {}).ToArray)
                    End If
                    Return ApplyTemplate(Of T)(list.AsQueryable, PageNumber, PageSize, Template)
                End Using
            End Function

            ''' <summary>
            ''' Aplica um template HTML a um objeto <see cref="IQueryable"/>
            ''' </summary>
            ''' <typeparam name="T">TIpo de objeto usado como fonte dos dados</typeparam>
            ''' <param name="List">      Lista de objetos</param>
            ''' <param name="Template">  Template HTML ou nome do template HTML</param>
            ''' <param name="PageNumber">Pagina que será processada.</param>
            ''' <param name="PageSize">
            ''' Quantidade de itens por página. Passar o valor 0 para trazer todos os itens
            ''' </param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)(List As IQueryable(Of T), Optional PageNumber As Integer = 1, Optional PageSize As Integer = 0, Optional Template As String = "") As TemplatePage(Of T)
                Dim total = If(List IsNot Nothing, List.Count, 0)
                If PageSize < 1 Then PageSize = total
                Dim l As New List(Of Template(Of T))
                If total > 0 Then
                    PageNumber = PageNumber.LimitRange(1, (total / PageSize).Ceil())
                    Dim List2 = List.Page(PageNumber, PageSize).ToArray()
                    For Each item As T In List2
                        l.Add(Me.ApplyTemplate(Of T)(CType(item, T), Template, Array.IndexOf(List2, item)))
                    Next
                End If
                Return CreateTemplateList(Template, l, PageSize, PageNumber, total)
            End Function

            ''' <summary>
            ''' Aplica um template HTML a um objeto <see cref="EntitySet(Of T)"/>
            ''' </summary>
            ''' <typeparam name="T">TIpo de objeto usado como fonte dos dados</typeparam>
            ''' <param name="List">      Lista de objetos</param>
            ''' <param name="Template">  Template HTML ou nome do template HTML</param>
            ''' <param name="PageNumber">Pagina que será processada.</param>
            ''' <param name="PageSize">
            ''' Quantidade de itens por página. Passar o valor 0 para trazer todos os itens
            ''' </param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)(List As EntitySet(Of T), Optional PageNumber As Integer = 1, Optional PageSize As Integer = 0, Optional Template As String = "") As TemplatePage(Of T)
                Return ApplyTemplate(List.AsQueryable, PageNumber, PageSize, Template.ToString)
            End Function

            ''' <summary>
            ''' Aplica um template HTML a um objeto <see cref="ISingleResult(Of T)"/>
            ''' </summary>
            ''' <typeparam name="T">TIpo de objeto usado como fonte dos dados</typeparam>
            ''' <param name="List">      Lista de objetos</param>
            ''' <param name="Template">  Template HTML ou nome do template HTML</param>
            ''' <param name="PageNumber">Pagina que será processada.</param>
            ''' <param name="PageSize">
            ''' Quantidade de itens por página. Passar o valor 0 para trazer todos os itens
            ''' </param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)(List As ISingleResult(Of T), Optional PageNumber As Integer = 1, Optional PageSize As Integer = 0, Optional Template As String = "") As TemplatePage(Of T)
                Return ApplyTemplate(List.ToArray.AsQueryable, PageNumber, PageSize, Template.ToString)
            End Function

            ''' <summary>
            ''' Extrai uma Query SQL de um arquivo e retorna um <see cref="TemplatePage"/> com os resultados
            ''' </summary>
            ''' <typeparam name="T">Tipo do Objeto</typeparam>
            ''' <param name="TemplateName">Nome do Template configurado</param>
            ''' <param name="Parameters">  </param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)(TemplateName As String, Parameters As Object()) As TemplatePage(Of T)
                Return ApplyTemplate(Of T)(GetCommand(TemplateName), TemplateName, Parameters)
            End Function

            ''' <summary>
            ''' Extrai o Comando SQL e o Template HTML definidos para o objeto do tipo
            ''' <typeparamref name="T"/> e retorna um <see cref="TemplatePage(Of T)"/> com os resultados
            ''' </summary>
            ''' <typeparam name="T">Tipo do Objeto</typeparam>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)() As TemplatePage(Of T)
                Return ApplyTemplate(Of T)(GetCommand(GetType(T).Name), GetTemplate(Of T), {})
            End Function

            ''' <summary>
            ''' Aplica um template HTML a um objeto <see cref="Data.Linq.Table(Of TEntity)"/>
            ''' </summary>
            ''' <typeparam name="T">TIpo de objeto usado como fonte dos dados</typeparam>
            ''' <param name="List">      Lista de objetos</param>
            ''' <param name="Template">  Template HTML ou nome do template HTML</param>
            ''' <param name="PageNumber">Pagina que será processada.</param>
            ''' <param name="PageSize">
            ''' Quantidade de itens por página. Passar o valor 0 para trazer todos os itens
            ''' </param>
            ''' <returns></returns>
            Public Overloads Function ApplyTemplate(Of T As Class)(List As Table(Of T), Optional PageNumber As Integer = 1, Optional PageSize As Integer = 0, Optional Template As String = "") As TemplatePage(Of T)
                Return ApplyTemplate(List.AsQueryable, PageNumber, PageSize, Template)
            End Function

            ''' <summary>
            ''' Aplica um template HTML a um objeto <see cref="Data.Linq.Table(Of TEntity)"/>
            ''' </summary>
            ''' <typeparam name="T">TIpo de objeto usado como fonte dos dados</typeparam>
            ''' <param name="List">      Lista de objetos</param>
            ''' <param name="Template">  Template HTML ou nome do template HTML</param>
            ''' <param name="PageNumber">Pagina que será processada.</param>
            ''' <param name="PageSize">
            ''' Quantidade de itens por página. Passar o valor 0 para trazer todos os itens
            ''' </param>
            ''' <returns></returns>
            Public Overrides Function ApplyTemplate(Of T As Class)(List As IEnumerable(Of T), Optional PageNumber As Integer = 1, Optional PageSize As Integer = 0, Optional Template As String = "") As TemplatePage(Of T)
                Return ApplyTemplate(List.AsQueryable, PageNumber, PageSize, Template.ToString)
            End Function

            ''' <summary>
            ''' Pega o comando SQL de um arquivo ou resource
            ''' </summary>
            ''' <param name="CommandFile">Nome do arquivo ou resource</param>
            ''' <returns></returns>
            Public Function GetCommand(CommandFile As String) As String
                CommandFile = Path.GetFileNameWithoutExtension(CommandFile) & ".sql"
                Select Case True
                    Case IsNothing(ApplicationAssembly) And Not IsNothing(TemplateDirectory)
                        Dim filefound = TemplateDirectory.SearchFiles(SearchOption.TopDirectoryOnly, CommandFile).First
                        If Not filefound.Exists Then Throw New FileNotFoundException(CommandFile.Quote & "  not found in " & TemplateDirectory.Name.Quote)
                        Using file As StreamReader = filefound.OpenText
                            Return file.ReadToEnd
                        End Using
                    Case Not IsNothing(ApplicationAssembly) And IsNothing(TemplateDirectory)
                        Try
                            Return GetResourceFileText(ApplicationAssembly, ApplicationAssembly.GetName.Name & "." & CommandFile)
                        Catch ex As Exception
                            Throw New FileNotFoundException(CommandFile.Quote & "  not found in " & ApplicationAssembly.GetName.Name.Quote & " resources. Check if Build Action is marked as ""Embedded Resource"" in File Properties.")
                        End Try
                    Case Else
                        Throw New Exception("ApplicationAssembly or TemplateDirectory is not configured!")
                End Select
            End Function

            Friend Overrides Sub ProccessSubTemplate(Of T As Class)(item As T, doc As HtmlDocument)

                Dim listat = doc.Nodes.GetElementsByTagName("template", True)
                For index = 0 To listat.Count - 1
                    Dim templatetag As HtmlElement = listat(index)
                    If templatetag.HasAttribute("disabled") Then
                        templatetag.Destroy()
                        Continue For
                    End If
                    Try
                        If templatetag.Name = "template" Then

                            Dim conteudo = ""
                            Dim el_cont = CType(templatetag.Nodes.GetElementsByTagName("content").First, HtmlElement)
                            Dim el_empty = CType(templatetag.Nodes.GetElementsByTagName("empty").FirstOrDefault, HtmlElement)
                            If el_cont IsNot Nothing Then
                                If el_cont.HasAttribute("file") AndAlso el_cont.Attribute("file").IsNotBlank Then
                                    conteudo = pegartemplate(el_cont.Attribute("file"))
                                Else
                                    conteudo = el_cont.InnerHTML.HtmlDecode
                                End If
                                el_cont.Destroy()
                            End If

                            Dim sql = ""
                            Dim el_sql = CType(templatetag.Nodes.GetElementsByTagName("sql").FirstOrDefault, HtmlElement)
                            If el_sql IsNot Nothing Then
                                If el_sql.HasAttribute("file") AndAlso el_sql.Attribute("file").IsNotBlank Then
                                    sql = GetCommand(el_sql.Attribute("file"))
                                Else
                                    sql = el_sql.InnerHTML.HtmlDecode
                                End If
                                el_sql.Destroy()
                            End If

                            Dim source = ""
                            Dim pg As Integer = 0
                            Dim n_item As Integer = 0
                            Dim el_source = CType(templatetag.Nodes.GetElementsByTagName("property").FirstOrDefault, HtmlElement)
                            If el_source IsNot Nothing Then
                                If el_source.HasAttribute("name") AndAlso el_source.Attribute("name").IsNotBlank Then
                                    source = el_source.Attribute("name")
                                    Try
                                        pg = el_source.Attribute("page")
                                    Catch ex As Exception
                                    End Try
                                    Try
                                        n_item = el_source.Attribute("size")
                                    Catch ex As Exception
                                    End Try
                                End If
                                el_source.Destroy()
                            End If

                            Dim lista As IEnumerable(Of Object) = Nothing

                            If sql.IsNotBlank Then
                                lista = ApplyTemplate(Of Dictionary(Of String, Object))(sql, conteudo, {})
                            End If

                            If source.IsNotBlank Then
                                Dim classe As IEnumerable(Of Object) = ClassTools.GetPropertyValue(item, source)
                                If classe.Count > 0 AndAlso conteudo.IsBlank Then
                                    conteudo = GetTemplate(classe(0).GetType, True)
                                End If

                                Dim ordersource = CType(templatetag.Nodes.GetElementsByTagName("order").FirstOrDefault, HtmlElement)
                                If ordersource IsNot Nothing Then
                                    classe = classe.OrderBy(Function(x) True)
                                    For Each prop In ordersource.Attributes
                                        classe = CType(classe, IOrderedEnumerable(Of Object)).ThenBy({prop.Name}, prop.IsMinimized OrElse prop.Value.IsAny("asc", "true", "1", "ascending"))
                                    Next
                                End If

                                If classe.Count() > 0 Then
                                    lista = ApplyTemplate(Of Object)(classe.AsQueryable, pg, n_item, conteudo)
                                    conteudo = lista.ToString
                                Else
                                    lista = New List(Of Object)
                                    If el_empty IsNot Nothing Then
                                        conteudo = el_empty.ToString()
                                    Else
                                        conteudo = ""
                                    End If

                                End If
                            End If

                            If lista Is Nothing Then
                                Throw New NullReferenceException("'Property' tag or 'SQL' tag not specified in template tag.")
                            End If

                            If templatetag.HasAttribute("renderas") Then
                                templatetag.Name = templatetag.Attribute("renderas").IfBlank("span")
                                templatetag.RemoveAttribute("renderas")
                                templatetag.InnerHTML = conteudo
                            Else
                                templatetag.Mutate(conteudo)
                            End If
                        End If
                    Catch ex As Exception
                        templatetag.Destroy()
                    End Try
                Next
            End Sub

        End Class

    End Namespace

    ''' <summary>
    ''' Lista com as TemplateTags
    ''' </summary>
    Public Enum TemplateTag

        ''' <summary>
        ''' Cabeçalho do template, aplicado uma vez antes do body
        ''' </summary>
        Head = 0

        ''' <summary>
        ''' Corpo do template, replicado para cada objeto
        ''' </summary>
        Body = 1

        ''' <summary>
        ''' Rodapé do template, aplicado uma vez apos o body
        ''' </summary>
        Footer = 2

        ''' <summary>
        ''' template de paginacao
        ''' </summary>
        Pagination = 3

        ''' <summary>
        ''' Placeholder aplicado no lugar do body quando a lista não conter resultados
        ''' </summary>
        Empty = 4

    End Enum

    ''' <summary>

    ''' <summary>
    ''' Classe que mescla paginas de um mesmo tipo de template. Particulamente util para união de
    ''' diferentes resultados filtrados de um mesmo tipo de objeto
    ''' </summary>
    ''' <typeparam name="T"></typeparam>
    Public Class MixedTemplatePage(Of T As Class)
        Inherits List(Of Template(Of T))

        Sub New()
            MyBase.New()
        End Sub

        ''' <summary>
        ''' Declara um novo <see cref="MixedTemplatePage(Of T)"/> a partir de varias paginas de Template
        ''' </summary>
        ''' <param name="List"></param>
        Sub New(ParamArray List As TemplatePage(Of T)())
            Me.New(Nothing, List)
        End Sub

        ''' <summary>
        ''' Declara um novo <see cref="MixedTemplatePage(Of T)"/> a partir de varias paginas de
        ''' Template com ordenacao especifica
        ''' </summary>
        ''' <param name="List"></param>
        Sub New(OrderSelectors As Func(Of T, Object)(), ParamArray List As TemplatePage(Of T)())
            MyBase.New(Criar(List, OrderSelectors))
            Me.Head = List.First.Head
            Me.Footer = List.First.Footer
            Me.Empty = List.First.Empty
        End Sub

        ''' <summary>
        ''' HTML retornado quando não houver itens na lista ou na página atual
        ''' </summary>
        ''' <returns></returns>
        Property Empty As String = ""

        ''' <summary>
        ''' html adicionado após os template
        ''' </summary>
        ''' <returns></returns>
        Property Footer As String = ""

        ''' <summary>
        ''' Html adcionado antes do template
        ''' </summary>
        ''' <returns></returns>
        Property Head As String = ""

        Public Shared Widening Operator CType(v As MixedTemplatePage(Of T)) As String
            Return v.ToString
        End Operator

        ''' <summary>
        ''' Retorna o HTML da pagina atual da lista de templates
        ''' </summary>
        ''' <returns></returns>
        Public Function BuildHtml() As HtmlDocument
            Dim html As String = ""
            If Me.Count > 0 Then
                For Each i In Me
                    html &= i.ToString
                Next
            Else
                html = Empty
            End If
            Return New HtmlDocument(Head & html.IfBlank(Empty) & Footer)
        End Function

        ''' <summary>
        ''' Retorna o HTML da pagina atual da lista de templates
        ''' </summary>
        ''' <returns></returns>
        Public Overrides Function ToString() As String
            Return BuildHtml.ToString()
        End Function

        Friend Shared Function Criar(List As TemplatePage(Of T)(), OrderSelectors As Func(Of T, Object)()) As List(Of T)
            Dim tpl As IOrderedEnumerable(Of T) = Nothing
            If OrderSelectors IsNot Nothing AndAlso OrderSelectors.Count > 0 Then
                tpl = List.SelectMany(Function(x) x.Select(Function(y) y)).OrderBy(OrderSelectors.First)
                For index = 1 To OrderSelectors.Count - 1
                    tpl = tpl.ThenBy(OrderSelectors(index))
                Next
            Else
                tpl = List.SelectMany(Function(x) x.Select(Function(y) y))
            End If
            If tpl IsNot Nothing Then
                Return tpl.ToList
            Else
                Return New List(Of T)
            End If
        End Function

    End Class

    ''' <summary>
    ''' Estrutura de template do Triforce
    ''' </summary>
    ''' <typeparam name="T"></typeparam>
    Public Class Template(Of T)

        Public Shared Widening Operator CType(v As Template(Of T)) As String
            Return v.ToString()
        End Operator

        ''' <summary>
        ''' Cria um novo template
        ''' </summary>
        ''' <param name="Data">             </param>
        ''' <param name="ProcessedTemplate"></param>
        Friend Sub New(Data As T, ProcessedTemplate As String, Culture As CultureInfo, DataIndex As Integer)
            Me.Data = Data
            Me.DataIndex = DataIndex
            Dim doc As New HtmlDocument(ProcessedTemplate)
            QuantifyStrings(doc.Nodes)
            Me.ProccessCalc(doc)
            Me.ProccessIfParameter(doc)
            Me.ProccessIfClass(doc)
            Me.ProccessConditions(doc)
            Me.ProccessSwitch(doc)
            Me.ProccessIf(doc)
            Me.ProccessRepeat(doc)
            Me.ProccessEnableIF(doc)
            Me.ProccessDisableIF(doc)
            Me.ProcessedTemplate = doc
            Me.Culture = If(Culture, CultureInfo.CurrentCulture)
        End Sub

        ReadOnly Property Culture As CultureInfo

        ''' <summary>
        ''' Objeto de onde são extraidos as informações do template
        ''' </summary>
        ''' <returns></returns>
        ReadOnly Property Data As T

        ''' <summary>
        ''' Posição do item atual no template
        ''' </summary>
        ''' <returns></returns>
        ReadOnly Property DataIndex As Integer

        ''' <summary>
        ''' Template processado
        ''' </summary>
        ''' <returns></returns>
        ReadOnly Property ProcessedTemplate As HtmlDocument

        Public Overrides Function ToString() As String
            Return Me.ProcessedTemplate.Body.ToString()
        End Function

        Friend Sub ProccessConditions(doc As HtmlDocument)

            Dim lista = doc.Nodes.GetElementsByTagName("condition", True)
            For index = 0 To lista.Count - 1
                Dim conditiontag As HtmlElement = lista(index)
                If conditiontag.HasAttribute("disabled") Then
                    conditiontag.Destroy()
                    Continue For
                End If
                Try
                    If conditiontag.Name = "condition" Then
                        Dim expression = CType(conditiontag.Nodes.GetElementsByTagName("expression", False)(0), HtmlElement).InnerHTML.HtmlDecode
                        Dim contenttag = CType(conditiontag.Nodes.GetElementsByTagName("content", False)(0), HtmlElement).InnerHTML.HtmlDecode
                        Dim resultexp = EvaluateExpression(expression)

                        If resultexp = True Or resultexp > 0 Then
                            If conditiontag.HasAttribute("renderas") Then
                                conditiontag.Name = conditiontag.Attribute("renderas").IfBlank("span")
                                conditiontag.RemoveAttribute("renderas")
                                conditiontag.InnerHTML = contenttag
                            Else
                                conditiontag.Mutate(contenttag)
                            End If
                        Else
                            If conditiontag.HasAttribute("renderas") Then
                                conditiontag.Name = conditiontag.Attribute("renderas").IfBlank("span")
                                conditiontag.RemoveAttribute("renderas")
                                conditiontag.InnerHTML = ""
                            Else
                                conditiontag.Destroy()
                            End If
                        End If
                    End If
                Catch ex As Exception
                    conditiontag.Destroy()
                End Try
            Next
        End Sub

        Friend Sub ProccessCalc(doc As HtmlDocument)
            Dim lista = doc.Nodes.GetElementsByTagName("eval", True)
            For index = 0 To lista.Count - 1
                Dim calctag As HtmlElement = lista(index)
                If calctag.HasAttribute("disabled") Then
                    calctag.Destroy()
                    Continue For
                End If
                Try
                    If calctag.Name = "eval" Then
                        Dim expression = calctag.InnerHTML.HtmlDecode()
                        Dim resultexp = EvaluateExpression(expression)
                        If calctag.HasAttribute("renderas") Then
                            calctag.Name = calctag.Attribute("renderas")
                            calctag.RemoveAttribute("renderas")
                            calctag.InnerHTML = resultexp
                        Else
                            calctag.Parent.InnerHTML = resultexp
                        End If
                    End If
                Catch ex As Exception
                    calctag.Destroy()
                End Try
            Next
        End Sub

        Friend Sub ProccessIf(doc As HtmlDocument)
            Dim lista = doc.Nodes.GetElementsByTagName("IF", True)
            For index = 0 To lista.Count - 1
                Dim conditiontag As HtmlElement = lista(index)
                If conditiontag.HasAttribute("disabled") Then
                    conditiontag.Destroy()
                    Continue For
                End If
                Try
                    If conditiontag.Name = "if" Then
                        Dim expression = CType(conditiontag.Nodes.GetElementsByTagName("expression")(0), HtmlElement).InnerHTML.HtmlDecode
                        Dim truetag = CType(conditiontag.Nodes.GetElementsByTagName("true", False)(0), HtmlElement).InnerHTML.HtmlDecode
                        Dim falsetag = ""
                        Try
                            falsetag = CType(conditiontag.Nodes.GetElementsByTagName("false", False)(0), HtmlElement).InnerHTML.HtmlDecode
                        Catch
                        End Try
                        Dim resultexp = EvaluateExpression(expression)
                        If resultexp = True OrElse resultexp > 0 Then
                            If conditiontag.HasAttribute("renderas") Then
                                conditiontag.Name = conditiontag.Attribute("renderas")
                                conditiontag.RemoveAttribute("renderas")
                                conditiontag.InnerHTML = truetag
                            Else
                                conditiontag.Mutate(truetag)
                            End If
                        Else
                            If falsetag.IsNotBlank Then
                                If conditiontag.HasAttribute("renderas") Then
                                    conditiontag.Name = conditiontag.Attribute("renderas").IfBlank("span")
                                    conditiontag.RemoveAttribute("renderas")
                                    conditiontag.InnerHTML = falsetag
                                Else
                                    conditiontag.Mutate(falsetag)
                                End If
                            Else
                                If conditiontag.HasAttribute("renderas") Then
                                    conditiontag.Name = conditiontag.Attribute("renderas").IfBlank("span")
                                    conditiontag.RemoveAttribute("renderas")
                                    conditiontag.InnerHTML = ""
                                Else
                                    conditiontag.Destroy()
                                End If
                            End If
                        End If
                    End If
                Catch ex As Exception
                    conditiontag.Destroy()
                End Try
            Next
        End Sub

        Friend Sub ProccessIfParameter(doc As HtmlDocument)
            Dim lista = doc.FindElements(Of HtmlElement)(Function(x) x.AttributesNames.Any(Function(y) y.StartsWith("if:")))
            For index = 0 To lista.Count - 1
                Dim el As HtmlElement = lista(index)
                Dim attrs = el.Attributes.Where(Function(x) x.Name.StartsWith("if:"))
                For i = 0 To attrs.Count - 1
                    Dim attr = attrs(i)
                    Dim condition = EvaluateExpression(Of Boolean)(attr.Value)
                    If condition = False Then
                        el.RemoveAttribute(attr.Name.RemoveFirstIf("if:"))
                    End If

                Next
                el.RemoveAttribute(attrs.Select(Function(x) x.Name).ToArray())
            Next
        End Sub

        Friend Sub ProccessIfClass(doc As HtmlDocument)
            Dim lista = doc.FindElements(Of HtmlElement)(Function(x) x.AttributesNames.Any(Function(y) y.StartsWith("ifclass:")))
            For index = 0 To lista.Count - 1
                Dim el As HtmlElement = lista(index)
                Dim attrs = el.Attributes.Where(Function(x) x.Name.StartsWith("ifclass:"))
                For i = 0 To attrs.Count - 1
                    Dim attr = attrs(i)
                    Dim condition = EvaluateExpression(Of Boolean)(attr.Value)
                    If condition Then
                        el.Class.Add(attr.Name.RemoveFirstIf("ifclass:"))
                    End If
                Next
                el.RemoveAttribute(attrs.Select(Function(x) x.Name).ToArray())

            Next
        End Sub

        Friend Sub ProccessDisableIF(doc As HtmlDocument)
            Dim lista = doc.FindElements(Of HtmlElement)(Function(x) x.AttributesNames.Any(Function(y) y.StartsWith("disableif")))
            For index = 0 To lista.Count - 1
                Dim el As HtmlElement = lista(index)
                Dim attrs = el.Attributes.Where(Function(x) x.Name.StartsWith("disableif"))
                For i = 0 To attrs.Count - 1
                    Dim attr = attrs(i)
                    Dim condition = EvaluateExpression(Of Boolean)(attr.Value)
                    el.RemoveAttribute(attr.Name)
                    If condition Then
                        el.Destroy()
                    End If
                Next

            Next
        End Sub



        Friend Sub ProccessEnableIF(doc As HtmlDocument)
            Dim lista = doc.FindElements(Of HtmlElement)(Function(x) x.AttributesNames.Any(Function(y) y.StartsWith("enableif")))
            For index = 0 To lista.Count - 1
                Dim el As HtmlElement = lista(index)
                Dim attrs = el.Attributes.Where(Function(x) x.Name.StartsWith("enableif"))
                For i = 0 To attrs.Count - 1
                    Dim attr = attrs(i)
                    Dim condition = EvaluateExpression(Of Boolean)(attr.Value)
                    el.RemoveAttribute(attr.Name)
                    If Not condition Then
                        el.Destroy()
                    End If
                Next

            Next
        End Sub

        Friend Sub ProccessRepeat(doc As HtmlDocument)
            Dim lista = doc.Nodes.GetElementsByTagName("repeat", True)
            For index = 0 To lista.Count - 1
                Dim repeattag As HtmlElement = lista(index)
                If repeattag.HasAttribute("disabled") Then
                    repeattag.Destroy()
                    Continue For
                End If
                If repeattag.HasAttribute("value") Then
                    Dim base = repeattag.InnerHTML
                    repeattag.InnerHTML = ""
                    Dim n = repeattag.Attribute("value")
                    If Not n.IsNumber Then n = n.Length
                    For index2 = 1 To n.ChangeType(Of Integer)
                        repeattag.InnerHTML &= base.Replace("_index", index2)
                    Next
                Else
                    repeattag.Destroy()
                End If
            Next
        End Sub

        Friend Sub ProccessSwitch(doc As HtmlDocument)
            Dim lista = doc.Nodes.GetElementsByTagName("switch", True)
            For index = 0 To lista.Count - 1
                Dim conditiontag As HtmlElement = lista(index)
                If conditiontag.HasAttribute("disabled") Then
                    conditiontag.Destroy()
                    Continue For
                End If
                Try
                    If conditiontag.Name = "switch" Then

                        Dim othertag = conditiontag.FindElements(Function(n As HtmlElement)
                                                                     Dim value1 = conditiontag.Attribute("value").HtmlDecode
                                                                     Dim values = n.Attributes.Where(Function(x) x.Name.StartsWith("value")).Select(Function(y) y.Value.HtmlDecode).ToArray
                                                                     Dim op = n.Attribute("operator").HtmlDecode.IfBlank("=")
                                                                     value1 = value1.QuoteIf(Not value1.IsNumber)
                                                                     values = values.Select(Function(b) b.QuoteIf(Not b.IsNumber())).ToArray()
                                                                     Return n.Name = "case" AndAlso values.Any(Function(value2) EvaluateExpression(value1 & op & value2) = True)
                                                                 End Function, False)
                        Dim html = ""
                        If othertag.Count > 0 Then
                            For Each node As HtmlElement In othertag
                                html &= (node.InnerHTML)
                                If node.HasAttribute("break") Then
                                    Exit For
                                End If
                            Next
                        Else
                            othertag = conditiontag.FindElements(Function(n As HtmlElement) n.Name = "else" Or n.Name = "default", False)
                            If othertag.Count > 0 Then
                                html = CType(othertag.First, HtmlElement).InnerHTML
                            End If
                        End If

                        If html.IsNotBlank Then
                            If conditiontag.HasAttribute("renderas") Then
                                conditiontag.Name = conditiontag.Attribute("renderas").IfBlank("span")
                                conditiontag.RemoveAttribute("renderas")
                                conditiontag.InnerHTML = html
                            Else
                                conditiontag.Mutate(html)
                            End If
                        Else
                            If conditiontag.HasAttribute("renderas") Then
                                conditiontag.Name = conditiontag.Attribute("renderas").IfBlank("span")
                                conditiontag.RemoveAttribute("renderas")
                                conditiontag.InnerHTML = ""
                            Else
                                conditiontag.Destroy()
                            End If
                        End If
                    End If
                Catch ex As Exception
                    conditiontag.Destroy()
                End Try
            Next
        End Sub

        Friend Sub QuantifyStrings(nodes As HtmlNodeCollection)
            For index_el = 0 To nodes.Count - 1
                Dim el As HtmlNode = nodes(index_el)
                If TypeOf el Is HtmlElement Then
                    Dim cel = CType(el, HtmlElement)

                    For Each at In cel.Attributes
                        If at.Value.ContainsAll("{q=", "}") Then
                            at.Value = at.Value.QuantifyText("q")
                        End If
                    Next
                    If cel.Nodes.Count > 0 Then
                        QuantifyStrings(cel.Nodes)
                    End If
                Else
                    Dim ctx = CType(el, HtmlText)
                    If ctx.Parent IsNot Nothing Then
                        For Each node As HtmlText In ctx.Parent.FindElements(Of HtmlText)(Function(x) True, False)
                            If node.Text.ContainsAll("{q=", "}") Then
                                node.Text = node.Text.QuantifyText("q")
                            End If
                        Next
                    End If
                End If
            Next
        End Sub


    End Class

    ''' <summary>
    ''' Lista paginada contendo <see cref="Template(Of T)"/> previamente processados
    ''' </summary>
    ''' <typeparam name="T"></typeparam>
    ''' <remarks>Apenas os templates da pagina atual são processados</remarks>
    Public Class TemplatePage(Of T As Class)
        Inherits ReadOnlyCollection(Of Template(Of T))

        Friend _pagination As String = ""

        Friend Sub New(lista As List(Of Template(Of T)), Pagesize As Integer, PageNumber As Integer, Total As Integer)
            MyBase.New(lista)
            Me.PageSize = Pagesize
            Me.PageNumber = PageNumber
            Me.Total = Total
        End Sub

        ''' <summary>
        ''' Numero de Paginas deste template
        ''' </summary>
        ''' <returns></returns>
        ReadOnly Property PageCount As Integer
            Get
                Return (Total / PageSize).Ceil
            End Get
        End Property

        ''' <summary>
        ''' HTML da paginaçao dos itens
        ''' </summary>
        ''' <returns></returns>
        Property Pagination As String
            Get
                Dim paginationdoc As New HtmlDocument(_pagination)
                Dim p As New HtmlDocument(_pagination)
                Dim first As HtmlElement = Nothing
                Dim last As HtmlElement = Nothing
                Dim page As HtmlElement = Nothing
                Dim active As HtmlElement = Nothing
                Dim back As HtmlElement = Nothing
                Dim nex As HtmlElement = Nothing

                Try
                    page = p.Nodes.GetElementsByTagName("page").First
                Catch ex As Exception
                    Return ""
                End Try
                Try
                    active = p.Nodes.GetElementsByTagName("active").First
                Catch ex As Exception
                    active = p.Nodes.GetElementsByTagName("page").First
                End Try
                Try
                    first = p.Nodes.GetElementsByTagName("first").First
                Catch ex As Exception
                    first = p.Nodes.GetElementsByTagName("page").First

                End Try
                Try
                    last = p.Nodes.GetElementsByTagName("last").First
                Catch ex As Exception
                    last = p.Nodes.GetElementsByTagName("page").First
                End Try
                Try
                    back = p.Nodes.GetElementsByTagName("back").First
                Catch ex As Exception
                End Try
                Try
                    nex = p.Nodes.GetElementsByTagName("next").First
                Catch ex As Exception
                End Try

                If Me.PageCount > 1 Then
                    Dim limit = page.Attribute("limit")

                    If Not limit.IsNumber Then
                        limit = PageCount - 2
                    End If

                    Dim dic As New Dictionary(Of String, String)
                    dic("##PaginationUrl##") = PaginationUrlTemplate
                    dic("##ActivePage##") = PageNumber
                    dic("##PageNumber##") = PageNumber
                    dic("##PageCount##") = PageCount
                    dic("##PageSize##") = PageSize
                    dic("##Count##") = Me.Count
                    dic("##Total##") = Total

                    Dim beforeafter As Decimal = (limit - 1) / 2
                    If beforeafter.IsOdd Then beforeafter = (beforeafter + 1).Floor
                    Dim before = PageNumber
                    Dim after = PageNumber
                    Dim pagestring = active.InnerHTML.ReplaceFrom(dic)

                    For c = 0 To beforeafter
                        before = before - 1
                        after = after + 1

                        If before > 1 And before < PageCount Then
                            dic("##PageNumber##") = before
                            pagestring = pagestring.Prepend(page.InnerHTML.ReplaceFrom(dic))
                            ' pagestring = pagestring.Replace("##PaginationUrl##", PaginationUrlTemplate.ReplaceFrom(dic))
                        End If

                        If after > 1 And after < PageCount Then
                            dic("##PageNumber##") = after
                            pagestring &= (page.InnerHTML.ReplaceFrom(dic))
                            'pagestring = pagestring.Replace("##PaginationUrl##", PaginationUrlTemplate.ReplaceFrom(dic))
                        End If
                    Next
                    dic("##PageNumber##") = PageNumber - 1
                    If back IsNot Nothing Then
                        pagestring = pagestring.PrependIf(back.InnerHTML.ReplaceFrom(dic), PageNumber > 1)
                        'pagestring = pagestring.Replace("##PaginationUrl##", PaginationUrlTemplate.ReplaceFrom(dic))
                    End If

                    dic("##PageNumber##") = 1
                    If first IsNot Nothing Then
                        pagestring = pagestring.PrependIf(first.InnerHTML.ReplaceFrom(dic), PageNumber > 1)
                        'pagestring = pagestring.Replace("##PaginationUrl##", PaginationUrlTemplate.ReplaceFrom(dic))
                    End If

                    dic("##PageNumber##") = PageNumber + 1
                    If nex IsNot Nothing Then
                        pagestring &= If(nex.InnerHTML.ReplaceFrom(dic), PageNumber < PageCount)
                        'pagestring = pagestring.Replace("##PaginationUrl##", PaginationUrlTemplate.ReplaceFrom(dic))
                    End If

                    dic("##PageNumber##") = PageCount
                    If last IsNot Nothing Then
                        pagestring &= If(last.InnerHTML.ReplaceFrom(dic), PageNumber < PageCount)
                        'pagestring = pagestring.Replace("##PaginationUrl##", PaginationUrlTemplate.ReplaceFrom(dic))
                    End If

                    'paginationdoc.Nodes.GetElementsByTagName("page").First.Parent.InnerHTML = pagestring
                    paginationdoc = New HtmlDocument(pagestring)

                    Return paginationdoc.InnerHTML.ReplaceFrom(dic)
                End If
                Return ""
            End Get
            Set(value As String)
                _pagination = value
            End Set
        End Property

        ''' <summary>
        ''' HTML retornado quando não houver itens na lista ou na página atual
        ''' </summary>
        ''' <returns></returns>
        Property Empty As String = ""

        ''' <summary>
        ''' html adicionado após os template
        ''' </summary>
        ''' <returns></returns>
        Property Footer As String = ""

        ''' <summary>
        ''' Html adcionado antes do template
        ''' </summary>
        ''' <returns></returns>
        Property Head As String = ""

        ''' <summary>
        ''' Pagina atual. Corresponde ao grupo de itens que foram processados
        ''' </summary>
        ''' <returns></returns>
        ReadOnly Property PageNumber As Integer

        ''' <summary>
        ''' Numero de Itens por pagina
        ''' </summary>
        ''' <returns></returns>
        ReadOnly Property PageSize As Integer

        ''' <summary>
        ''' Template aplicado a URL de paginação
        ''' </summary>
        ''' <returns></returns>
        Property PaginationUrlTemplate As String = ""

        ''' <summary>
        ''' Total de Itens encontrados na <see cref="IQueryable"/> ou <see cref="IEnumerable"/>
        ''' </summary>
        ''' <returns></returns>
        ReadOnly Property Total As Integer

        Public Shared Widening Operator CType(v As TemplatePage(Of T)) As String
            Return v.ToString
        End Operator

        ''' <summary>
        ''' Cria um template de URL de paginação a partir de uma URL previamente criada
        ''' </summary>
        ''' <param name="Url">URL</param>
        ''' <param name="PageNumberParameter">Parametro de paginacao utilizado</param>
        ''' <param name="QueryString">Parametros adicionais</param>
        ''' <returns></returns>
        Function CreatePaginationUrlTemplate(Url As String, PageNumberParameter As String, Optional QueryString As NameValueCollection = Nothing) As String
            QueryString = If(QueryString, New NameValueCollection)
            If Url.IsURL Then
                Dim _url = New Uri(Url)
                If _url.Query.IsNotBlank Then QueryString.Add(Text.ParseQueryString(_url.Query))
            End If
            If QueryString.AllKeys.Contains(PageNumberParameter) Then
                QueryString.Remove(PageNumberParameter)
            End If
            QueryString(PageNumberParameter) = "##PageNumber##"
            Dim u As New UriBuilder(Url)
            u.Query = QueryString.ToQueryString
            PaginationUrlTemplate = u.Uri.ToString()
            Return PaginationUrlTemplate
        End Function

        ''' <summary>
        ''' Retorna o HTML da pagina atual da lista de templates
        ''' </summary>
        ''' <returns></returns>
        Public Function BuildHtml() As HtmlDocument
            Dim html As String = ""
            If Me.Count > 0 Then
                For Each i In Me
                    html &= i.ToString
                Next
            Else
                html = Empty
            End If

            Return New HtmlDocument(Head.Replace("#_PAGINATION_#", Pagination) & html.IfBlank(Empty) & Footer.Replace("#_PAGINATION_#", Pagination))
        End Function

        ''' <summary>
        ''' Retorna o HTML da pagina atual da lista de templates
        ''' </summary>
        ''' <returns></returns>
        Public Overrides Function ToString() As String
            Return BuildHtml.ToString()
        End Function

    End Class

    ''' <summary>
    ''' Classe que permite pegar propriedades de outras classes durante o processamento de um template
    ''' </summary>
    Public Class TemplatePropertySelector

        ''' <summary>
        ''' Declara um novo TemplatePropertySelector a partir de um objeto e uma String de Propriedade
        ''' </summary>
        ''' <param name="Obj">           </param>
        ''' <param name="PropertyString"></param>
        Sub New(Obj As Object, PropertyString As String)
            Me.Obj = Obj
            Me.PropertyString = PropertyString
        End Sub

        Property Obj As Object
        Property PropertyString As String

        ''' <summary>
        ''' Retorna o valor daquela propriedade do objeto definido
        ''' </summary>
        ''' <returns></returns>
        Public Function Proccess() As Object
            If PropertyString.IsNotBlank Then
                Return ClassTools.GetPropertyValue(Of Object)(Obj, PropertyString, True)
            Else
                Return Obj
            End If
        End Function

    End Class

    ''' <summary>
    ''' Gerador de HTML dinâmico a partir de objetos LINQ e arquivos HTML.
    ''' </summary>
    Public Class Triforce
        Friend _cult As CultureInfo

        Friend TemplateMap As New Dictionary(Of Type, String)

        ''' <summary>
        ''' Instancia um novo <see cref="LINQ"/> a partir de um Assembly
        ''' </summary>
        ''' <param name="ApplicationAssembly">
        ''' Assembly contendo os arquivos HTML. Os arquivos HTML devem ser marcados como EMBEDDED RESOURCE
        ''' </param>
        Sub New(ApplicationAssembly As Assembly, ParamArray Selectors As String())
            Me.ApplicationAssembly = ApplicationAssembly
            Me.Selectors = If(Selectors IsNot Nothing AndAlso Selectors.Length > 0, Selectors, Me.Selectors)
        End Sub

        ''' <summary>
        ''' Instancia um novo <see cref="LINQ"/> a partir de um diretório de templates
        ''' </summary>
        ''' <param name="TemplateDirectory">Diretorio contendo os arquivos HTML</param>
        Sub New(TemplateDirectory As DirectoryInfo, ParamArray Selectors As String())
            Me.TemplateDirectory = TemplateDirectory
            Me.Selectors = If(Selectors IsNot Nothing AndAlso Selectors.Length > 0, Selectors, Me.Selectors)
        End Sub

        ''' <summary>
        ''' Aplicaçao contendo os Resources (arquivos compilados internamente) dos arquivos HTML e
        ''' SQL utilizados como template
        ''' </summary>
        ''' <returns></returns>
        ReadOnly Property ApplicationAssembly As Assembly = Nothing

        ''' <summary>
        ''' Especifica a cultura utilizda para este Triforce
        ''' </summary>
        ''' <returns></returns>
        Public Property Culture As CultureInfo
            Get
                Return If(_cult, CultureInfo.CurrentCulture)
            End Get
            Set(value As CultureInfo)
                _cult = value
            End Set
        End Property

        ''' <summary>
        ''' Propriedades retiradas diretamente de um objeto com indexadores durante o processamento
        ''' do template. Particulamente util para propriedades de objetos que nao vem do banco, mas
        ''' que necessitam de um parametro que vem do banco
        ''' </summary>
        ''' <returns></returns>
        Public Property CustomProperties As New Dictionary(Of String, TemplatePropertySelector)

        ''' <summary>
        ''' Valores adicionados ao processamento do template que não vem do banco de dados ou do
        ''' objeto. Particulamente Util para dados de sessão.
        ''' </summary>
        ''' <returns></returns>
        Public Property CustomValues As New Dictionary(Of String, Object)

        ''' <summary>
        ''' Seletores de Template.
        ''' </summary>
        Public Property Selectors As String() = {"##"}

        ''' <summary>
        ''' Pasta contendo os arquivos HTML e SQL utilizados como template
        ''' </summary>
        ''' <returns></returns>
        ReadOnly Property TemplateDirectory As DirectoryInfo = Nothing

        ''' <summary>
        ''' Aplica um array de objetos em um template e retorna um <see cref="Template(Of Dictionary(Of String,Object))"/>  do resultado
        ''' </summary>
        ''' <param name="Template">Template</param>
        ''' <param name="Items">   Items na ordem que serão substituidos</param>
        ''' <returns></returns>
        Public Function ApplyArrayTemplate(Template As String, ParamArray Items As Object()) As Template(Of Dictionary(Of Integer, Object))
            Dim stringas As New Dictionary(Of Integer, Object)
            Template = GetTemplateContent(Template, TemplateTag.Body)
            For Each item In Items
                stringas.Add(Array.IndexOf(Items, item), item)
            Next
            Return ApplyTemplate(stringas, Template)
        End Function

        ''' <summary>
        ''' Aplica um template HTML a um unico objeto
        ''' </summary>
        ''' <typeparam name="T">TIpo de objeto usado como fonte dos dados</typeparam>
        ''' <param name="Item">    Objeto</param>
        ''' <param name="Template">Template HTML ou nome do template HTML</param>
        ''' <returns></returns>
        Public Overridable Function ApplyTemplate(Of T As Class)(Item As T, Optional Template As String = "", Optional DataIndex As Integer = 0) As Template(Of T)
            If Template.IsBlank Then
                Template = Me.GetTemplate(Of T)
            End If

            Dim post_proccess As New Dictionary(Of String, Object)

            For Each pp In CustomProperties
                Dim oo As New TemplatePropertySelector(pp.Value.Obj, ReplaceValues(Item, pp.Value.PropertyString))
                post_proccess.Add(pp.Key, oo.Proccess)
            Next

            Dim doc = New HtmlDocument(pegartemplate(Template), Nothing, True)

            ProccessGet(doc)

            'replace nos valores do template pai sem afetar os filhos
            TravesseAndReplace(doc.Nodes, Item, True)

            'processa subtemplates
            Me.ProccessSubTemplate(Item, doc)

            'e entao replace nos valores do template pai novamente pra cobrir os valores dos templates filhos que nao foram replaceados
            TravesseAndReplace(doc.Nodes, Item, False)

            'ReplaceFrom nos valores fixos e propriedades
            TravesseAndReplace(doc.Nodes, CustomValues, False)
            TravesseAndReplace(doc.Nodes, post_proccess, False)



            Return New Template(Of T)(Item, doc.ToString, Me.Culture, DataIndex)
        End Function

        ''' <summary>
        ''' Aplica um template HTML a um objeto <see cref="IEnumerable"/>
        ''' </summary>
        ''' <typeparam name="T">TIpo de objeto usado como fonte dos dados</typeparam>
        ''' <param name="List">      Lista de objetos</param>
        ''' <param name="Template">  Template HTML ou nome do template HTML</param>
        ''' <param name="PageNumber">Pagina que será processada.</param>
        ''' <param name="PageSize">
        ''' Quantidade de itens por página. Passar o valor 0 para trazer todos os itens
        ''' </param>
        ''' <returns></returns>
        Public Overridable Function ApplyTemplate(Of T As Class)(List As IEnumerable(Of T), Optional PageNumber As Integer = 1, Optional PageSize As Integer = 0, Optional Template As String = "") As TemplatePage(Of T)
            Dim total = List.Count
            If PageSize < 1 Then PageSize = total
            Dim l As New List(Of Template(Of T))
            If total > 0 Then
                PageNumber = PageNumber.LimitRange(1, (total / PageSize).Ceil())
                Dim List2 = List.Page(PageNumber, PageSize).ToArray()
                For Each item As T In List2
                    l.Add(Me.ApplyTemplate(Of T)(CType(item, T), Template, Array.IndexOf(List2, item)))
                Next
            End If
            Return CreateTemplateList(Template, l, PageSize, PageNumber, total)
        End Function

        ''' <summary>
        ''' Aplica valores de um dicionário a uma string com marcações de template
        ''' </summary>
        ''' <param name="StringToApply"></param>
        ''' <param name="Values"></param>
        ''' <returns></returns>
        Public Function ApplyValues(StringToApply As String, Values As IDictionary(Of String, Object)) As String
            For Each selector In Selectors
                If StringToApply.IsNotBlank Then
                    StringToApply = StringToApply.ReplaceFrom(Values.Select(Function(x) New KeyValuePair(Of String, Object)(selector & x.Key & selector, x.Value)).ToDictionary())
                End If
            Next
            Return If(StringToApply, "")
        End Function

        ''' <summary>
        ''' Limpa dos resultados dos templates as chaves que não foram encontradas
        ''' </summary>
        ''' <param name="StringToClear"></param>
        ''' <returns></returns>
        Public Function ClearNotFoundValues(StringToClear As String) As String
            For Each selector In Selectors
                If StringToClear.IsNotBlank Then
                    Dim ff As MatchEvaluator
                    Dim pt = GetRegexPattern(selector)
                    Dim re As Regex = New Regex(pt, RegexOptions.Compiled)
                    ff = Function(match)
                             Return ""
                         End Function
                    StringToClear = re.Replace(StringToClear, ff)
                End If
            Next
            Return If(StringToClear, "")
        End Function

        ''' <summary>
        ''' Processa a uma string URL com marcaçoes de template e retorna uma URI
        ''' </summary>
        ''' <typeparam name="T"></typeparam>
        ''' <param name="UrlTemplate"></param>
        ''' <param name="Obj">        </param>
        ''' <returns></returns>
        Function CreateUrl(Of T As Class)(Obj As T, UrlTemplate As String) As Uri
            UrlTemplate = ReplaceValues(Of T)(Obj, UrlTemplate)
            If UrlTemplate.IsURL Then
                Return New Uri(UrlTemplate)
            End If
            Throw New ArgumentException("Generated URL is not a valid URL")
            Return Nothing
        End Function

        ''' <summary>
        ''' Retorna o nome do arquivo de template, ou o template processado se ProccessFile estiver True
        ''' </summary>
        ''' <typeparam name="T"></typeparam>
        ''' <returns></returns>
        Function GetTemplate(Of T As Class)(Optional ProcessFile As Boolean = False) As String
            Return GetTemplate(GetType(T), ProcessFile)
        End Function

        ''' <summary>
        ''' Retorna o nome do arquivo de template, ou o template processado se ProccessFile estiver True
        ''' </summary>
        ''' <returns></returns>
        Function GetTemplate(Type As Type, Optional ProcessFile As Boolean = False) As String
            Dim tmp = Type.GetAttributeValue(Of TriforceDefaultTemplate, String)(Function(x) x.Template)
            If tmp.IsNotBlank Then
                If ProcessFile Then
                    tmp = pegartemplate(tmp)
                End If
            Else
                Throw New FileNotFoundException("Class " & Type.Name.Quote & " doesent have the attribute TriforceDefaultTemplate configured")
            End If
            Return tmp
        End Function

        ''' <summary>
        ''' Retorna o conteudo estático de um arquivo de template
        ''' </summary>
        ''' <param name="Templatefile">Nome do arquivo do template</param>
        ''' <param name="Tag">
        ''' Indica qual tag dve ser capturada, head, body ou footer ou pagination
        ''' </param>
        ''' <returns></returns>
        Public Function GetTemplateContent(TemplateFile As String, Tag As TemplateTag) As String
            Select Case Tag
                Case 0
                    Return pegartemplate(TemplateFile, "head")
                Case 1
                    Return pegartemplate(TemplateFile, "body")
                Case 2
                    Return pegartemplate(TemplateFile, "footer")
                Case 3
                    Return pegartemplate(TemplateFile, "pagination")
                Case 4
                    Return pegartemplate(TemplateFile, "empty")
                Case Else
                    Return pegartemplate(TemplateFile, "body")
            End Select
        End Function

        Friend Function ApplySelector(Name As String, Selector As String) As String
            Return Selector & Name & Selector
        End Function

        Friend Function CreateTemplateList(Of T As Class)(Template As String, l As List(Of Template(Of T)), PageSize As Integer, PageNumber As Integer, Total As Integer) As TemplatePage(Of T)

            Dim tpl = New TemplatePage(Of T)(l, PageSize, PageNumber, Total)
            If Template.IsBlank Then
                Template = GetTemplate(Of T)()
            End If
            Try
                tpl.Head = ReplaceValues(Me.CustomValues, pegartemplate(Template, "head"))
            Catch ex As Exception
            End Try
            Try
                tpl.Footer = ReplaceValues(Me.CustomValues, pegartemplate(Template, "footer"))
            Catch ex As Exception
            End Try
            Try
                tpl.Empty = ReplaceValues(Me.CustomValues, pegartemplate(Template, "empty"))
            Catch ex As Exception
            End Try
            Try
                tpl.Pagination = ReplaceValues(Me.CustomValues, pegartemplate(Template, "pagination"))
            Catch ex As Exception
            End Try
            Return tpl
        End Function

        Friend Function GetRegexPattern(Selector As String) As String
            Return Selector.RegexEscape & "(.*?)" & Selector.RegexEscape
        End Function

        Friend Function pegartemplate(TemplateFile As String, Optional Tag As String = "body") As String
            If TemplateFile.IsNotBlank Then
                If TemplateFile.ContainsAny("<", ">") Then
                    Select Case Tag
                        Case "body"
                            Try
                                Dim el = CType(New HtmlDocument(TemplateFile).Nodes.GetElementsByTagName(Tag, False)(0), HtmlElement)
                                If el.HasAttribute("file") AndAlso el.Attribute("file").IsNotBlank Then
                                    Return pegartemplate(el.Attribute("file"), Tag)
                                Else
                                    Return el.InnerHTML
                                End If
                            Catch ex As Exception
                                Return TemplateFile
                            End Try
                        Case Else
                            Try
                                Dim el = CType(New HtmlDocument(TemplateFile).Nodes.GetElementsByTagName(Tag, False)(0), HtmlElement)
                                If el.HasAttribute("file") AndAlso el.Attribute("file").IsNotBlank Then
                                    Return pegartemplate(el.Attribute("file"), Tag)
                                Else
                                    Return el.InnerHTML
                                End If
                            Catch ex As Exception
                                Return ""
                            End Try
                    End Select
                    Return TemplateFile
                Else
                    TemplateFile = Path.GetFileNameWithoutExtension(TemplateFile) & ".html"
                    If IsNothing(ApplicationAssembly) Then
                        Dim filefound = TemplateDirectory.SearchFiles(SearchOption.AllDirectories, TemplateFile).FirstOrDefault()
                        If filefound Is Nothing OrElse Not filefound.Exists Then Throw New FileNotFoundException(TemplateFile.Quote & "  not found in " & TemplateDirectory.Name.Quote)
                        Using file As StreamReader = filefound.OpenText
                            Try
                                Return CType(New HtmlDocument(file.ReadToEnd).Nodes.GetElementsByTagName(Tag).First, HtmlElement).InnerHTML
                            Catch ex As Exception
                                Throw New Exception(Tag & " not found in " & filefound.Name)
                            End Try
                        End Using
                    Else
                        Try
                            Dim txt = GetResourceFileText(ApplicationAssembly, ApplicationAssembly.GetName.Name & "." & TemplateFile)
                            Try
                                Return CType(New HtmlDocument(txt).Nodes.GetElementsByTagName(Tag).First, HtmlElement).InnerHTML
                            Catch ex As Exception
                                Throw New Exception(Tag & " not found in " & ApplicationAssembly.GetName.Name & "." & TemplateFile)
                            End Try
                        Catch ex As Exception
                            Throw New FileNotFoundException(TemplateFile.Quote & "  not found in " & ApplicationAssembly.GetName.Name.Quote & " resources. Check if Build Action is marked as ""Embedded Resource"" in File Properties.")
                        End Try
                    End If
                End If
            End If
            Return ""
        End Function

        Friend Sub ProccessGet(doc As HtmlDocument)

            Dim lista = doc.Nodes.GetElementsByTagName("get", True)
            For index = 0 To lista.Count - 1
                Dim conditiontag As HtmlElement = lista(index)
                If conditiontag.HasAttribute("disabled") Then
                    conditiontag.Destroy()
                    Continue For
                End If
                Try
                    If conditiontag.Name = "get" Then
                        Dim contenttag As String = ""
                        If conditiontag.HasAttribute("url") AndAlso conditiontag.Attribute("url").IsURL Then
                            If conditiontag.HasAttribute("selector") AndAlso conditiontag.Attribute("selector").IsNotBlank Then
                                contenttag = New HtmlDocument(conditiontag.Attribute("url")).Nodes(conditiontag.Attribute("selector")).Select(Function(x) x.HTML).Join("")
                            Else
                                contenttag = New HtmlDocument(conditiontag.Attribute("url")).HTML
                            End If
                        End If

                        If conditiontag.HasAttribute("renderas") Then
                            conditiontag.Name = conditiontag.Attribute("renderas").IfBlank("span")
                            conditiontag.RemoveAttribute("renderas")
                            conditiontag.InnerHTML = contenttag
                        Else
                            conditiontag.Mutate(contenttag)
                        End If
                    End If
                Catch ex As Exception
                    conditiontag.Destroy()
                End Try
            Next
        End Sub

        Friend Overridable Sub ProccessSubTemplate(Of T As Class)(item As T, doc As HtmlDocument)

            Dim listat = doc.Nodes.GetElementsByTagName("template", True)
            For index = 0 To listat.Count - 1
                Dim templatetag As HtmlElement = listat(index)
                If templatetag.HasAttribute("disabled") Then
                    templatetag.Destroy()
                    Continue For
                End If
                Try
                    If templatetag.Name = "template" Then

                        Dim conteudo = ""
                        Dim el_cont = CType(templatetag.Nodes.GetElementsByTagName("content").First, HtmlElement)
                        Dim el_empty = CType(templatetag.Nodes.GetElementsByTagName("empty").FirstOrDefault, HtmlElement)

                        If el_cont IsNot Nothing Then
                            If el_cont.HasAttribute("file") AndAlso el_cont.Attribute("file").IsNotBlank Then
                                conteudo = pegartemplate(el_cont.Attribute("file"))
                            Else
                                conteudo = el_cont.InnerHTML.HtmlDecode
                            End If
                            el_cont.Destroy()
                        End If

                        Dim source = ""
                        Dim pg As Integer = 0
                        Dim n_item As Integer = 0
                        Dim el_source = CType(templatetag.Nodes.GetElementsByTagName("property").FirstOrDefault, HtmlElement)
                        If el_source IsNot Nothing Then
                            If el_source.HasAttribute("name") AndAlso el_source.Attribute("name").IsNotBlank Then
                                source = el_source.Attribute("name")
                                Try
                                    pg = el_source.Attribute("page")
                                Catch ex As Exception
                                End Try
                                Try
                                    n_item = el_source.Attribute("size")
                                Catch ex As Exception
                                End Try
                            End If
                            el_source.Destroy()
                        End If

                        Dim lista As IEnumerable(Of Object) = Nothing

                        If source.IsNotBlank Then
                            Dim classe As IEnumerable(Of Object) = ClassTools.GetPropertyValue(item, source)
                            If classe.Count > 0 AndAlso conteudo.IsBlank Then
                                conteudo = GetTemplate(classe(0).GetType, True)
                            End If

                            Dim ordersource = CType(templatetag.Nodes.GetElementsByTagName("order").FirstOrDefault, HtmlElement)
                            If ordersource IsNot Nothing Then
                                classe = classe.OrderBy(Function(x) True)
                                For Each prop In ordersource.Attributes
                                    classe = CType(classe, IOrderedEnumerable(Of Object)).ThenBy({prop.Name}, prop.IsMinimized OrElse prop.Value.IsAny("asc", "true", "1", "ascending"))
                                Next
                            End If

                            If classe.Count() > 0 Then
                                lista = ApplyTemplate(Of Object)(classe.AsQueryable, pg, n_item, conteudo)
                                conteudo = lista.ToString
                            Else
                                lista = New List(Of Object)
                                If el_empty IsNot Nothing Then
                                    conteudo = el_empty.ToString()
                                Else
                                    conteudo = ""
                                End If
                            End If
                        End If

                        If lista Is Nothing Then
                            Throw New NullReferenceException("Property tag not specified in template.")
                        End If

                        conteudo = lista.ToString
                        If templatetag.HasAttribute("renderas") Then
                            templatetag.Name = templatetag.Attribute("renderas").IfBlank("span")
                            templatetag.RemoveAttribute("renderas")
                            templatetag.InnerHTML = conteudo
                        Else
                            templatetag.Mutate(conteudo)
                        End If
                    End If
                Catch ex As Exception
                    templatetag.Destroy()
                End Try
            Next
        End Sub

        Friend Sub ReplaceExpressionVariables(Of T As Class)(Item As T, extag As HtmlElement)
            While extag.Attributes.Count > 0
                Dim attr = extag.Attributes.First
                attr.Value = ReplaceValues(Item, attr.Value)
                extag.InnerHTML = extag.InnerHTML.Replace(attr.Name, attr.Value)
                extag.RemoveAttribute(attr.Name)
            End While
        End Sub

        Friend Function ReplaceValues(Of T As Class)(Item As T, StringToReplace As String) As String
            For Each selector In Selectors
                If StringToReplace.IsNotBlank AndAlso Item IsNot Nothing Then
                    Dim ff As MatchEvaluator = Nothing
                    Dim pt = GetRegexPattern(selector)
                    Dim re As Regex = New Regex(pt, RegexOptions.Compiled)
                    If GetType(T) = GetType(Dictionary(Of String, Object)) Then
                        If CType(CType(Item, Object), Dictionary(Of String, Object)).Count > 0 Then
                            ff = Function(match)
                                     Dim s As String
                                     Dim key As String = match.Groups(1).Value
                                     Try
                                         s = CType(Item, IDictionary)(key)
                                         If s IsNot Nothing Then
                                         Else
                                             Throw New KeyNotFoundException(ApplySelector(key, selector) & " not found")
                                         End If
                                     Catch ex As Exception
                                         s = ApplySelector(key, selector)
                                     End Try
                                     Return s
                                 End Function
                        End If
                    Else
                        ff = Function(match As Match) As String
                                 Dim val
                                 Dim key = match.Groups(1).Value
                                 If Item.HasProperty(key) Then
                                     val = ClassTools.GetPropertyValue(Item, key)
                                     val = If(val, "")
                                 Else
                                     Return ApplySelector(key, selector)
                                 End If

                                 If val.GetType.IsIn({GetType(Date), GetType(Date?)}) Then
                                     Dim d As Date? = val
                                     If d.HasValue Then
                                         Try
                                             Dim formatter As TriforceDateTimeFormat = Nothing
                                             Dim prop = Item.GetProperties().FirstOrDefault(Function(x) x.Name = key)
                                             If prop IsNot Nothing Then
                                                 formatter = prop.GetCustomAttribute(Of TriforceDateTimeFormat)
                                             End If

                                             If formatter Is Nothing Then
                                                 formatter = Item.GetType().GetCustomAttribute(Of TriforceDateTimeFormat)
                                             End If

                                             If formatter IsNot Nothing Then
                                                 Return d.Value.ToString(formatter.Format, formatter.Culture)
                                             End If

                                             Return d.Value.ToString(Culture.DateTimeFormat)
                                         Catch ex As Exception
                                             Return d.ToString()
                                         End Try
                                     Else
                                         Return ""
                                     End If
                                 End If

                                 If val.GetType.IsIn({GetType(Decimal), GetType(Double), GetType(Integer), GetType(Long), GetType(Short), GetType(Decimal?), GetType(Double?), GetType(Integer?), GetType(Long?), GetType(Short?)}) Then
                                     If val IsNot Nothing Then
                                         Try

                                             Dim formatter As TriforceNumberFormat = Nothing
                                             Dim prop = Item.GetProperties().FirstOrDefault(Function(x) x.Name = key)
                                             If prop IsNot Nothing Then
                                                 formatter = prop.GetCustomAttribute(Of TriforceNumberFormat)
                                             End If

                                             If formatter Is Nothing Then
                                                 formatter = Item.GetType().GetCustomAttribute(Of TriforceNumberFormat)
                                             End If

                                             If formatter IsNot Nothing Then
                                                 If formatter.TraillingZeros Then
                                                     If val < 0 Then
                                                         String.Format(formatter.Culture, formatter.Format, val).RemoveFirstIf("-").TrimStart("0").Prepend("-")
                                                     End If
                                                     Return String.Format(formatter.Culture, formatter.Format, val).TrimStart("0")
                                                 End If
                                                 Return String.Format(formatter.Culture, formatter.Format, val)
                                             End If

                                             If val.GetType.IsIn(GetType(Decimal), GetType(Double), GetType(Decimal?), GetType(Double?)) Then
                                                 Return String.Format(Culture.NumberFormat, "{0:0.00}", val)
                                             End If

                                             Return String.Format(Culture.NumberFormat, "{0:0}", val)
                                         Catch ex As Exception
                                             Return String.Format(Culture.NumberFormat, "{0:0}", val)
                                         End Try
                                     Else
                                         Return ""
                                     End If
                                 End If

                                 Return val.ToString

                             End Function
                    End If
                    If ff IsNot Nothing Then
                        StringToReplace = re.Replace(StringToReplace, ff)
                    End If
                End If
            Next
            Return If(StringToReplace, "").Replace("\r\n", "<br>")
        End Function

        Friend Sub TravesseAndReplace(Of T As Class)(nodes As HtmlNodeCollection, item As T, SkipTemplates As Boolean)
            For index_el = 0 To nodes.Count - 1
                If nodes.ElementAtOrDefault(index_el) IsNot Nothing Then
                    Dim el As HtmlNode = nodes.Item(index_el)
                    If TypeOf el Is HtmlElement Then
                        Dim cel = CType(el, HtmlElement)

                        'pula tag content do template (assim, apenas o prorio template pode dar replace em si mesmo na primeira vez)
                        If SkipTemplates Then
                            If cel.Parent IsNot Nothing AndAlso cel.Parent.Name = "template" AndAlso cel.Name = "content" Then
                                Continue For
                            End If
                        End If

                        'ReplaceFrom no nome da tag
                        cel.Name = ReplaceValues(item, cel.Name)

                        'replace dos atributos
                        For Each at In cel.Attributes
                            at.Name = ReplaceValues(item, at.Name)
                            at.Value = ReplaceValues(item, at.Value)
                        Next

                        If cel.Nodes.Count > 0 Then
                            TravesseAndReplace(cel.Nodes, item, SkipTemplates)
                        End If

                        'por ultimo, replace nas variaveis de expressoes
                        If cel.Name = "expression" Then
                            'substitui as variaveis
                            ReplaceExpressionVariables(item, cel)
                        End If
                    Else
                        Dim ctx = CType(el, HtmlText)
                        Dim txt = ReplaceValues(item, ctx.Text)
                        Dim parser = New HtmlParser.HtmlParser()
                        nodes.ReplaceElement(el, parser.Parse(txt))
                    End If
                End If
            Next
        End Sub

    End Class

    ''' <summary>
    ''' Atributo de Configuraçao do formato de data e hora. Se aplica a propriedade especificada ou a
    ''' classe toda
    ''' </summary>
    <AttributeUsage(AttributeTargets.Class + AttributeTargets.Property, AllowMultiple:=False, Inherited:=True)>
    Public Class TriforceDateTimeFormat
        Inherits Attribute

        Sub New(Optional Format As String = "dd/MM/yyyy HH:mm:ss", Optional Culture As String = Nothing)
            Me.Format = Format

            If Culture.IsNotBlank Then
                Try
                    Me.Culture = CultureInfo.CreateSpecificCulture(Culture)
                Catch ex As Exception
                End Try
            End If
            Me.Culture = If(Me.Culture, CultureInfo.CurrentCulture)
        End Sub

        ReadOnly Property Culture As CultureInfo

        ReadOnly Property Format As String = "dd/MM/yyyy HH:mm:ss"
    End Class

    ''' <summary>
    ''' Atributo de Configuraçao do formato de numero. Se aplica a propriedade especificada ou a
    ''' classe toda
    ''' </summary>
    <AttributeUsage(AttributeTargets.Class + AttributeTargets.Property, AllowMultiple:=False, Inherited:=True)>
    Public Class TriforceNumberFormat
        Inherits Attribute

        Sub New(Optional Format As String = "{0:0,0.00}", Optional Culture As String = Nothing, Optional TraillingZeros As Boolean = False)
            Me.Format = Format
            Me.TraillingZeros = TraillingZeros
            If Culture.IsNotBlank Then
                Try
                    Me.Culture = CultureInfo.CreateSpecificCulture(Culture)
                Catch ex As Exception
                End Try
            End If
            Me.Culture = If(Me.Culture, CultureInfo.CurrentCulture)
        End Sub

        ReadOnly Property Format As String = "{0:0,0.00}"
        ReadOnly Property Culture As CultureInfo
        ReadOnly Property TraillingZeros As Boolean = False
    End Class

    ''' <summary>
    ''' Atributo de Configuraçao do Template. Aplica-se a classes de entidade
    ''' </summary>
    <AttributeUsage(AttributeTargets.Class, AllowMultiple:=False, Inherited:=True)>
    Public Class TriforceDefaultTemplate
        Inherits Attribute

        Sub New(Name As String)
            Me.Template = Name
        End Sub

        Sub New(Template As HtmlDocument)
            Me.Template = Template.ToString
        End Sub

        ReadOnly Property Template As String = ""
    End Class

End Namespace