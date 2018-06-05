﻿
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks

Namespace HtmlParser.Selectors
    Friend Class ImediateChildrenSelector
        Inherits CssSelector
        Public Overrides ReadOnly Property AllowTraverse() As Boolean
            Get
                Return False
            End Get
        End Property

        Public Overrides ReadOnly Property Token() As String
            Get
                Return ">"
            End Get
        End Property

        Protected Friend Overrides Function FilterCore(currentNodes As HtmlNodeCollection) As HtmlNodeCollection
            Dim l As New HtmlNodeCollection
            l.Add(currentNodes.SelectMany(Function(i As HtmlElement) i.ChildElements).ToArray)
            Return l
        End Function
    End Class
End Namespace

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
