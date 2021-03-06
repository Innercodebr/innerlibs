﻿Namespace MenuBuilder

    ''' <summary>
    ''' Estrutura para criação de menus com submenus
    ''' </summary>
    Public Class MenuList(Of T)
        Inherits List(Of MenuItem(Of T))

        ''' <summary>
        ''' Verifica se este menu possui itens
        ''' </summary>
        ''' <returns></returns>
        Public ReadOnly Property HasItems
            Get
                Return Me.Count > 0
            End Get
        End Property

        ''' <summary>
        ''' Transforma a classe em um json
        ''' </summary>
        ''' <returns></returns>
        Public Function ToJSON() As String
            Return OldJsonSerializer.SerializeJSON(Me)
        End Function

    End Class

    Public Class MenuItem
        Inherits MenuItem(Of Object)
    End Class

    Public Class MenuList
        Inherits MenuList(Of Object)
    End Class

    ''' <summary>
    ''' Item de um InnerMenu
    ''' </summary>
    Public Class MenuItem(Of T)

        ''' <summary>
        ''' Icone correspondente a este menu
        ''' </summary>
        ''' <returns></returns>
        Public Property Icon As String

        ''' <summary>
        ''' Titulo do menu
        ''' </summary>
        ''' <returns></returns>
        Public Property Title As String

        ''' <summary>
        ''' URL do menu
        ''' </summary>
        ''' <returns></returns>
        Public Property URL As String = "#"

        ''' <summary>
        ''' Target do menu
        ''' </summary>
        ''' <returns></returns>
        Public Property Target As String = "_self"

        ''' <summary>
        ''' Subitens do menu
        ''' </summary>
        ''' <returns></returns>

        Property SubItems As MenuList(Of T)

        ''' <summary>
        ''' Informações relacionadas a este item
        ''' </summary>
        ''' <returns></returns>
        Public Property Data As T

        ''' <summary>
        ''' Indica se o menu está ativo (selecionado)
        ''' </summary>
        ''' <returns></returns>
        Public Property Active As Boolean = False

        ''' <summary>
        ''' Indica se o menu está habilitado
        ''' </summary>
        ''' <returns></returns>
        Public Property Enabled As Boolean = True

        ''' <summary>
        ''' Indica se o menu está visivel
        ''' </summary>
        ''' <returns></returns>
        Public Property Visible As Boolean = True

        ''' <summary>
        ''' Verifica se este item possui subitens
        ''' </summary>
        ''' <returns></returns>
        Public ReadOnly Property HasItems As Boolean
            Get
                Return SubItems.Count > 0
            End Get
        End Property

        ''' <summary>
        ''' Inicializa um novo MenuBuilderItem
        ''' </summary>
        ''' <param name="Title">Titulo do menu</param>
        ''' <param name="URL">URL do menu</param>
        ''' <param name="Target">Alvo do menu, nomralmente _self</param>
        ''' <param name="Icon">icone do menu</param>
        Public Sub New(Title As String, URL As String, Optional Target As String = "_self", Optional Icon As String = "")
            Me.Title = Title
            Me.URL = URL
            Me.Target = Target
            Me.Icon = Icon
        End Sub

        ''' <summary>
        ''' Inicializa um novo MenuBuilderItem
        ''' </summary>
        ''' <param name="Title">Titulo do Menu</param>
        ''' <param name="SubItems">Subitens do menu</param>
        Public Sub New(Title As String, SubItems As List(Of MenuItem(Of T)), Optional Icon As String = "")
            Me.Title = Title
            Me.SubItems = SubItems
        End Sub

        ''' <summary>
        ''' Construtor padrão
        ''' </summary>
        Public Sub New()

        End Sub

    End Class

End Namespace