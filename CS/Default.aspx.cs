using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void ASPxCardView1_CardUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
            e.Cancel = true;
            ASPxCardView1.CancelEdit();
    }
    protected void ASPxCardView1_CellEditorInitialize(object sender, DevExpress.Web.ASPxCardViewEditorEventArgs e)
    {
        if (e.Column.FieldName != "Discontinued")
        {
            bool editable = (bool)ASPxCardView1.GetCardValues(e.VisibleIndex, "Discontinued");
            e.Editor.ClientEnabled = editable;
        }
    }
}