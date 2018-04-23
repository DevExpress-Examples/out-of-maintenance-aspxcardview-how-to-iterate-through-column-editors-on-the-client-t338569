Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ASPxCardView1_CardUpdating(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)
            e.Cancel = True
            ASPxCardView1.CancelEdit()
    End Sub
    Protected Sub ASPxCardView1_CellEditorInitialize(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxCardViewEditorEventArgs)
        If e.Column.FieldName <> "Discontinued" Then
            Dim editable As Boolean = CBool(ASPxCardView1.GetCardValues(e.VisibleIndex, "Discontinued"))
            e.Editor.ClientEnabled = editable
        End If
    End Sub
End Class