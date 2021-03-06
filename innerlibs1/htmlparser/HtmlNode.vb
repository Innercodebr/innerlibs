Imports System.ComponentModel
Imports System.Web.UI.HtmlControls

Namespace HtmlParser

    ''' <summary>
    ''' The HtmlNode is the base for all objects that may appear in HTML. Currently, this
    ''' implemention only supports HtmlText and HtmlElement node types.
    ''' </summary>
    Public MustInherit Class HtmlNode
        Protected Friend mParent As HtmlElement


        ''' <summary>
        ''' Return a Json representation of this element
        ''' </summary>
        ''' <returns></returns>    
        Public Function ToJSON() As String
            Return JSONrepresentation.SerializeJSON
        End Function

        ''' <summary>
        ''' Return as
        ''' </summary>
        ''' <returns></returns>
        Overridable ReadOnly Property JsonRepresentation As Dictionary(Of String, Object)
            Get
                Dim d As New Dictionary(Of String, Object)
                If Me.IsText Then
                    d.Add("text", Me.AsText.Text)
                Else
                    d.Add("Name", Me.AsElement.Name)

                    For Each attr In Me.AsElement.Attributes.Where(Function(x) x.Name.ToLower.IsNotIn({"class", "style"}))
                        d.Add(attr.Name, attr.Value)
                    Next

                    If Me.AsElement.HasClass Then
                        d.Add("class", Me.AsElement.Class)
                    End If

                    If Me.AsElement.Style.Count > 0 Then
                        d.Add("style", Me.AsElement.Style)
                    End If

                    If Me.IsElement Then
                        d.Add("childnodes", Me.AsElement.ChildElements.Select(Function(x) x.JsonRepresentation()))
                    End If
                End If
                Return d
            End Get
        End Property

        ''' <summary>
        ''' This constructor is used by the subclasses.
        ''' </summary>
        Protected Sub New()
            mParent = Nothing
        End Sub

        ''' <summary>
        ''' This will return the next sibling node. If this is the last one, it will return null.
        ''' </summary>
        <Category("Navigation"), Description("The next sibling node")>
        Public ReadOnly Property [Next]() As HtmlNode
            Get
                If Parent IsNot Nothing Then
                    If Index = -1 Then
                        Return Nothing
                    Else
                        If Parent.Nodes.Count > Index + 1 Then
                            Return Parent.Nodes(Index + 1)
                        Else
                            Return Nothing
                        End If
                    End If
                End If
                Return Nothing
            End Get
        End Property

        Public MustOverride ReadOnly Property ElementRepresentation As String

        ''' <summary>
        ''' This will return the first child node. If there are no children, this will return null.
        ''' </summary>
        <Category("Navigation"), Description("The first child of this node")>
        Public ReadOnly Property FirstChild() As HtmlNode
            Get
                If TypeOf Me Is HtmlElement Then
                    If DirectCast(Me, HtmlElement).Nodes.Count = 0 Then
                        Return Nothing
                    Else
                        Return DirectCast(Me, HtmlElement).Nodes(0)
                    End If
                Else
                    Return Nothing
                End If
            End Get
        End Property

        Public Function AsElement() As HtmlElement
            Return CType(Me, HtmlElement)
        End Function

        Public Function AsElement(Of ElementType As HtmlElement)() As ElementType
            Return CType(Me, ElementType)
        End Function

        Public Function AsText() As HtmlText
            Return CType(Me, HtmlText)
        End Function

        ''' <summary>
        ''' This will return the full HTML to represent this node (and all child nodes).
        ''' </summary>
        <Category("Output"), Description("The HTML that represents this node and all the children")>
        Public MustOverride ReadOnly Property HTML() As String

        ''' <summary>
        ''' This will return the index position within the parent's nodes that this one resides. If
        ''' this is not in a collection, this will return -1.
        ''' </summary>
        <Category("Navigation"), Description("The zero-based index of this node in the parent's nodes collection")>
        Public ReadOnly Property Index() As Integer
            Get
                If mParent Is Nothing Then
                    Return -1
                Else
                    Return mParent.Nodes.IndexOf(Me)
                End If
            End Get
        End Property

        ''' <summary>
        ''' This will return true if this is a child node (has a parent).
        ''' </summary>
        <Category("Navigation"), Description("Is this node a child of another?")>
        Public ReadOnly Property IsChild() As Boolean
            Get
                Return mParent IsNot Nothing
            End Get
        End Property

        <Category("Navigation"), Description("Does this node have any children?")>
        Public ReadOnly Property IsParent() As Boolean
            Get
                If TypeOf Me Is HtmlElement Then
                    Return DirectCast(Me, HtmlElement).Nodes.Count > 0
                Else
                    Return False
                End If
            End Get
        End Property

        ''' <summary>
        ''' This will return true if this is a root node (has no parent).
        ''' </summary>
        <Category("Navigation"), Description("Is this node a root node?")>
        Public ReadOnly Property IsRoot() As Boolean
            Get
                Return mParent Is Nothing
            End Get
        End Property

        ''' <summary>
        ''' This will return the last child node. If there are no children, this will return null.
        ''' </summary>
        <Category("Navigation"), Description("The last child of this node")>
        Public ReadOnly Property LastChild() As HtmlNode
            Get
                If TypeOf Me Is HtmlElement Then
                    If DirectCast(Me, HtmlElement).Nodes.Count = 0 Then
                        Return Nothing
                    Else
                        Return DirectCast(Me, HtmlElement).Nodes(DirectCast(Me, HtmlElement).Nodes.Count - 1)
                    End If
                Else
                    Return Nothing
                End If
            End Get
        End Property

        ''' <summary>
        ''' This will return the parent of this node, or null if there is none.
        ''' </summary>
        <Category("Navigation"), Description("The parent node of this one")>
        Public Property Parent As HtmlElement
            Get
                Return mParent
            End Get
            Set(value As HtmlElement)
                Move(value)
            End Set
        End Property


        ''' <summary>
        ''' This will return the previous sibling node. If this is the first one, it will return null.
        ''' </summary>
        <Category("Navigation"), Description("The previous sibling node")>
        Public ReadOnly Property Previous() As HtmlNode
            Get
                If Parent IsNot Nothing Then
                    If Index = -1 Then
                        Return Nothing
                    Else
                        If Index > 0 Then
                            Return Parent.Nodes(Index - 1)
                        Else
                            Return Nothing
                        End If
                    End If
                End If
                Return Nothing
            End Get
        End Property

        ''' <summary>
        ''' This will return the full XHTML to represent this node (and all child nodes)
        ''' </summary>
        <Category("Output"), Description("The XHTML that represents this node and all the children")>
        Public MustOverride ReadOnly Property XHTML() As String


        Public Function AppendTo(Element As HtmlElement, Optional Copy As Boolean = False) As HtmlNode
            If Copy Then
                Dim el As New HtmlElement(Element)
                Element.Nodes.Add(el)
                Return el
            Else
                Element.Nodes.Add(Me)
                Return Me
            End If
        End Function

        Public MustOverride Function Censor(CensorChar As Char, ParamArray BadWords As String()) As Boolean

        ''' <summary>
        ''' Returns the most closest parent matching the css selector
        ''' </summary>
        ''' <param name="CssSelector"></param>
        ''' <returns></returns>
        Function Closest(CssSelector As String) As HtmlElement
            Dim father = TopParent()
            If father IsNot Nothing AndAlso father IsNot Me Then
                Dim l = father(CssSelector)
                Dim elm = Me.Parent
                While elm IsNot Nothing
                    If elm.IsIn(l) Then
                        Return elm
                    End If
                    elm = elm.Parent
                End While
            End If
            Return Nothing
        End Function



        Public MustOverride Sub FixText()

        ''' <summary>
        ''' This will return the ancstor that is common to this node and the one specified.
        ''' </summary>
        ''' <param name="node">The possible node that is relative</param>
        ''' <returns>The common ancestor, or null if there is none</returns>
        <Category("Relationships")>
        Public Function GetCommonAncestor(node As HtmlNode) As HtmlNode
            Dim thisParent As HtmlNode = Me
            While thisParent IsNot Nothing
                Dim thatParent As HtmlNode = node
                While thatParent IsNot Nothing
                    If thisParent Is thatParent Then
                        Return thisParent
                    End If
                    thatParent = thatParent.Parent
                End While
                thisParent = thisParent.Parent
            End While
            Return Nothing
        End Function

        ''' <summary>
        ''' This will return true if the node passed is one of the children or grandchildren of this node.
        ''' </summary>
        ''' <param name="node">The node that might be a child.</param>
        ''' <returns>True if this node is an ancestor of the one specified.</returns>
        <Category("Relationships")>
        Public Function IsAncestorOf(node As HtmlNode) As Boolean
            Return node.IsDescendentOf(Me)
        End Function



        ''' <summary>
        ''' This will return true if the node passed is a descendent of this node.
        ''' </summary>
        ''' <param name="node">The node that might be the parent or grandparent (etc.)</param>
        ''' <returns>True if this node is a descendent of the one passed in.</returns>
        <Category("Relationships")>
        Public Function IsDescendentOf(node As HtmlNode) As Boolean
            Dim parent As HtmlNode = mParent
            While parent IsNot Nothing
                If parent Is node Then
                    Return True
                End If
                parent = parent.Parent
            End While
            Return False
        End Function

        <Category("General"), Description("This is true if this is an element node")>
        Public Function IsElement() As Boolean
            Return TypeOf Me Is HtmlElement
        End Function

        <Category("General"), Description("This is true if this is an element of specific type")>
        Public Function IsElement(Of HtmlElementType As HtmlElement)() As Boolean
            Return TypeOf Me Is HtmlElementType
        End Function

        <Category("General"), Description("This is true if this is a text node")>
        Public Function IsText() As Boolean
            Return TypeOf Me Is HtmlText
        End Function

        ''' <summary>
        ''' Transfer the element to another element
        ''' </summary>
        ''' <param name="Destination"></param>
        Sub Move(Destination As HtmlElement, Optional Index As Integer = 0)
            Me.Remove()
            Destination.Nodes.Insert(Index, Me)
        End Sub

        ''' <summary>
        ''' This will remove this node and all child nodes from the tree. If this is a root node,
        ''' this operation will do nothing.
        ''' </summary>
        <Category("General")>
        Public Sub Remove()
            If mParent IsNot Nothing AndAlso mParent.Nodes.Count > 0 Then
                If Me.Index > -1 Then
                    mParent.Nodes.RemoveAt(Me.Index)
                End If
            End If
        End Sub

        ''' <summary>
        ''' Returns the most top parent of this node, or sef if parent is null
        ''' </summary>
        ''' <returns></returns>
        Function TopParent() As HtmlElement
            If Me.Parent IsNot Nothing Then
                Dim el = Me.Parent
                While el IsNot Nothing
                    el = el.Parent
                End While
                Return el
            End If
            Return Me
        End Function

        ''' <summary>
        ''' This will render the node as it would appear in HTML.
        ''' </summary>
        ''' <returns></returns>
        Public MustOverride Overrides Function ToString() As String

        ''' <summary>
        ''' Internal method to maintain the identity of the parent node.
        ''' </summary>
        ''' <param name="parentNode">The parent node of this one</param>
        Friend Sub SetParent(parentNode As HtmlElement)
            mParent = parentNode
        End Sub

    End Class

    ''' <summary>
    ''' This object represents a collection of HtmlNodes, which can be either HtmlText or HtmlElement
    ''' objects. The order in which the nodes occur directly corresponds to the order in which they
    ''' appear in the original HTML document.
    ''' </summary>
    Public Class HtmlNodeCollection
        Inherits List(Of HtmlNode)
        Friend mParent As HtmlElement

        ''' <summary>
        ''' Create an abstract collection of nodes thats don't changes the parent node property
        ''' </summary>
        Public Sub New()
            mParent = Nothing
        End Sub

        ''' <summary>
        ''' A collection is usually associated with a parent node (an HtmlElement, actually) but you
        ''' can pass null to implement an abstracted collection.
        ''' </summary>
        ''' <param name="parent">The parent element, or null if it is not appropriate</param>
        Friend Sub New(parent As HtmlElement)
            mParent = parent
        End Sub

        ''' <summary>
        ''' Return elements thats match the current CSS selector
        ''' </summary>
        ''' <param name="CssSelector">CSS selector</param>
        ''' <returns></returns>
        Default Public Overloads ReadOnly Property Item(CssSelector As String) As HtmlNodeCollection
            Get
                Dim l As New HtmlNodeCollection()

                If CssSelector Is Nothing OrElse CssSelector.IsBlank Then
                    Return Me
                End If

                If CssSelector.Contains(","c) Then
                    Dim combinedSelectors = CssSelector.Split(","c, StringSplitOptions.RemoveEmptyEntries)
                    Dim rt As New HtmlNodeCollection
                    If combinedSelectors(0).IsNotBlank Then
                        rt = Me.Item(combinedSelectors(0).Trim)
                    End If
                    For Each s In combinedSelectors.Skip(1)
                        If s.IsNotBlank Then
                            For Each n In Me.Item(s.Trim)
                                If Not rt.Contains(n) Then
                                    rt.Add(n)
                                End If
                            Next
                        End If
                    Next

                    Return rt

                End If

                CssSelector = CssSelector.Trim()

                Dim selectors = InnerLibs.HtmlParser.CssSelector.Parse(CssSelector)

                Dim allowTraverse As Boolean = True

                For Each selector In selectors

                    If allowTraverse AndAlso selector.AllowTraverse Then
                        l = Traverse(Me)
                    End If

                    l = selector.Filter(l)

                    allowTraverse = selector.AllowTraverse

                Next
                Return l
            End Get
        End Property

        ''' <summary>
        ''' Perform an action on each node and returns the same list
        ''' </summary>
        ''' <param name="action"></param>
        ''' <returns></returns>
        Public Function [Do](action As Action(Of HtmlNode)) As HtmlNodeCollection
            Me.ForEach(action)
            Return Me
        End Function

        ''' <summary>
        ''' Add a Node to colleciton
        ''' </summary>
        ''' <param name="Node"></param>
        Public Shadows Sub Add(Node As HtmlNode)
            If Node IsNot Nothing Then
                If Me.mParent IsNot Nothing Then
                    Node.Remove()
                    Node.SetParent(Me.mParent)
                End If
                MyBase.Add(Node)
            End If
        End Sub

        ''' <summary>
        ''' Add node (or nodes) to collection from string
        ''' </summary>
        ''' <param name="Html"></param>
        Public Shadows Sub Add(Html As String, Optional Index As Integer = 0)
            Dim d As New HtmlParser
            For Each i In d.Parse(Html)
                Me.Insert(Index, i)
            Next
        End Sub




        Public Shadows Sub Add(ParamArray Nodes As HtmlNode())
            For Each n In Nodes
                Me.Add(n)
            Next
        End Sub



        ''' <summary>
        ''' This will search though this collection of nodes for all elements with matchs the predicate.
        ''' </summary>
        ''' <typeparam name="NodeType">Type of Node ( <see cref="HtmlElement"/> or <see cref="HtmlText"/>)</typeparam>
        ''' <param name="predicate">     The predicate to match the nodes</param>
        ''' <param name="SearchChildren">Travesse the child nodes</param>
        ''' <returns></returns>
        Public Function FindElements(Of NodeType As HtmlNode)(predicate As Func(Of NodeType, Boolean), Optional SearchChildren As Boolean = True) As HtmlNodeCollection
            Dim results As New HtmlNodeCollection()
            For Each node As HtmlNode In Me
                If TypeOf node Is NodeType Then
                    If predicate(node) Then
                        results.Add(node)
                    End If
                End If
                If TypeOf node Is HtmlElement AndAlso SearchChildren Then
                    For Each matchedChild As HtmlNode In DirectCast(node, HtmlElement).Nodes.FindElements(predicate, SearchChildren)
                        results.Add(matchedChild)
                    Next
                End If
            Next
            Return results
        End Function

        ''' <summary>
        ''' Return all elements and child elements in a single list of NodeType
        ''' </summary>
        ''' <typeparam name="NodeType"></typeparam>
        ''' <returns></returns>
        Public Function FindElements(Of NodeType As HtmlNode)() As HtmlNodeCollection
            Return FindElements(Of NodeType)(Function(x) x IsNot Nothing, True)
        End Function

        ''' <summary>
        ''' Return only <see cref="HtmlElement"/> from this <see cref="HtmlNodeCollection"/>
        ''' </summary>
        ''' <returns></returns>
        Public Function GetElements() As IEnumerable(Of HtmlElement)
            Return Me.Where(Function(x) x.IsElement).Select(Function(x) x.AsElement)
        End Function

        ''' <summary>
        ''' This will search though this collection of nodes for all elements with the an attribute
        ''' with the given name.
        ''' </summary>
        ''' <param name="attributeName"> The name of the attribute to find</param>
        ''' <param name="SearchChildren">
        ''' True if you want to search sub-nodes, False to only search this collection.
        ''' </param>
        ''' <returns>A collection of all the nodes that macth.</returns>
        Public Function GetElementsByAttributeName(AttributeName As String, Optional SearchChildren As Boolean = True) As HtmlNodeCollection
            Dim results As New HtmlNodeCollection(Nothing)
            For Each node As HtmlNode In Me
                If TypeOf node Is HtmlElement Then
                    For Each attribute As HtmlAttribute In DirectCast(node, HtmlElement).Attributes
                        If attribute.Name.ToLower() = AttributeName.ToLower() Then
                            results.Add(node)
                            Exit For
                        End If
                    Next
                    If SearchChildren Then
                        For Each matchedChild As HtmlNode In DirectCast(node, HtmlElement).Nodes.GetElementsByAttributeName(AttributeName, SearchChildren)
                            results.Add(matchedChild)
                        Next
                    End If
                End If
            Next
            Return results
        End Function

        ''' <summary>
        ''' This will search though this collection of nodes for all elements with the an attribute
        ''' with the given name and value.
        ''' </summary>
        ''' <param name="attributeName">The name of the attribute to find</param>
        ''' <returns>A collection of all the nodes that macth.</returns>
        Public Function GetElementsByAttributeNameValue(AttributeName As String, AttributeValue As String, Optional SearchChildren As Boolean = True) As HtmlNodeCollection
            Dim results As New HtmlNodeCollection(Nothing)
            For Each node As HtmlNode In Me
                If TypeOf node Is HtmlElement Then
                    For Each attribute As HtmlAttribute In DirectCast(node, HtmlElement).Attributes
                        If attribute.Name.ToLower().Equals(AttributeName.ToLower()) Then
                            If attribute.Value.ToLower().Equals(AttributeValue.ToLower()) Then
                                results.Add(node)
                            End If
                            Exit For
                        End If
                    Next
                    If SearchChildren Then
                        For Each matchedChild As HtmlNode In DirectCast(node, HtmlElement).Nodes.GetElementsByAttributeNameValue(AttributeName, AttributeValue, SearchChildren)
                            results.Add(matchedChild)
                        Next
                    End If
                End If
            Next
            Return results
        End Function

        ''' <summary>
        ''' This will search though this collection of nodes for all elements with the specified
        ''' name. If you want to search the subnodes recursively, you should pass True as the
        ''' parameter in SearchChildren. This search is guaranteed to return nodes in the order in
        ''' which they are found in the document.
        ''' </summary>
        ''' <param name="name">          The name of the element to find</param>
        ''' <param name="SearchChildren">
        ''' True if you want to search sub-nodes, False to only search this collection.
        ''' </param>
        ''' <returns>A collection of all the nodes that macth.</returns>
        Public Function GetElementsByTagName(Name As String, Optional SearchChildren As Boolean = True) As HtmlNodeCollection
            Dim results As New HtmlNodeCollection(Nothing)
            For Each node As HtmlNode In Me
                If TypeOf node Is HtmlElement Then
                    If DirectCast(node, HtmlElement).Name.ToLower().Equals(Name.ToLower()) Then
                        results.Add(node)
                    End If
                    If SearchChildren Then
                        For Each matchedChild As HtmlNode In DirectCast(node, HtmlElement).Nodes.GetElementsByTagName(Name, SearchChildren)
                            results.Add(matchedChild)
                        Next
                    End If
                End If
            Next
            Return results
        End Function

        ''' <summary>
        ''' Insert a element in specific index
        ''' </summary>
        ''' <param name="Index"></param>
        ''' <param name="Nodes"> </param>
        Public Shadows Sub Insert(Index As Integer, ParamArray Nodes As HtmlNode())
            For Each node In Nodes
                If Me.mParent IsNot Nothing Then
                    node.Remove()
                    node.mParent = Me.mParent
                End If
                MyBase.Insert(Index, node)
                Index.Increment.SetMaxValue(Me.Count - 1)
            Next
        End Sub

        ''' <summary>
        ''' Insert a element in specific index
        ''' </summary>
        ''' <param name="Index"></param>
        ''' <param name="Nodes"></param>
        Public Shadows Sub Insert(Index As Integer, Nodes As String)
            Me.Insert(Index, New HtmlParser().Parse(Nodes))
        End Sub

        ''' <summary>
        ''' Insert a element in specific index
        ''' </summary>
        ''' <param name="Index"></param>
        ''' <param name="Nodes"></param>
        Public Shadows Sub Insert(Index As Integer, Nodes As HtmlNodeCollection)
            Me.Insert(Index, Nodes.ToArray)
        End Sub

        ''' <summary>
        ''' Replace a element into another set of elements
        ''' </summary>
        ''' <param name="Element"></param>
        ''' <param name="Items"></param>
        Public Sub ReplaceElement(Element As HtmlNode, Items As IEnumerable(Of HtmlNode))
            Dim indexo = Me.IndexOf(Element)
            Dim index_append = 1
            If indexo > -1 Then
                For Each el In Items
                    Me.Insert(indexo + index_append, el)
                    index_append.Increment
                Next
                Me.RemoveAt(Element.Index)
            Else
                Debug.Write("Element not found in List!")
            End If
        End Sub

        ''' <summary>
        ''' Replace a element into another set of elements
        ''' </summary>
        ''' <param name="Element"></param>
        ''' <param name="Html"></param>
        Public Sub ReplaceElement(Element As HtmlNode, Html As String)
            Dim n = New InnerLibs.HtmlParser.HtmlParser().Parse(Html)
            ReplaceElement(Element, n)
        End Sub

        ''' <summary>
        ''' Retuns all html text from this collection
        ''' </summary>
        ''' <returns></returns>
        Public Overrides Function ToString() As String
            Dim html As String = ""
            Me.ForEach(Function(x)
                           html &= (x.ToString)
                           Return html
                       End Function)
            Return html
        End Function

        Private Function Traverse(nodes As HtmlNodeCollection) As HtmlNodeCollection
            Dim l As New HtmlNodeCollection
            For Each node In nodes.Where(Function(i) i.IsElement)
                For Each n In Traverse(node).Where(Function(i) i.IsElement)
                    If n IsNot Nothing Then
                        l.Add(n)
                    End If
                Next
            Next
            Return l
        End Function

        Private Function Traverse(node As HtmlElement) As HtmlNodeCollection

            Dim l As New HtmlNodeCollection
            l.Add(node)

            For Each child In node.ChildElements
                ''aqui � os node de verdade'
                For Each n In Traverse(child)
                    l.Add(n)
                Next

            Next
            Return l
        End Function

    End Class

End Namespace