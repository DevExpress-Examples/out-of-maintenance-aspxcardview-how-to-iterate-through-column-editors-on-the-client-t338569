<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxCardView ID="ASPxCardView1" ClientInstanceName="grid" OnCardUpdating="ASPxCardView1_CardUpdating" OnCellEditorInitialize="ASPxCardView1_CellEditorInitialize" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductID">
            <Columns>
                <dx:CardViewTextColumn FieldName="ProductID" ReadOnly="True" Visible="False">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="UnitPrice" VisibleIndex="0">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="UnitsInStock" VisibleIndex="1">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="UnitsOnOrder" VisibleIndex="2">
                </dx:CardViewTextColumn>
                <dx:CardViewCheckColumn FieldName="Discontinued" VisibleIndex="3">
                    <PropertiesCheckEdit>
                        <ClientSideEvents CheckedChanged="function(s, e) {
	                        for(i = 0; i < grid.GetColumnCount(); i++) {
                                var editor = grid.GetEditor(i);
                                if(editor != null && editor != s)
                                    editor.SetEnabled(s.GetChecked());
                            } }" />
                    </PropertiesCheckEdit>
                </dx:CardViewCheckColumn>
            </Columns>
            <CardLayoutProperties>
                <Items>
                    <dx:CardViewCommandLayoutItem HorizontalAlign="Right" ShowEditButton="True">
                    </dx:CardViewCommandLayoutItem>
                    <dx:CardViewColumnLayoutItem ColumnName="UnitPrice">
                    </dx:CardViewColumnLayoutItem>
                    <dx:CardViewColumnLayoutItem ColumnName="UnitsInStock">
                    </dx:CardViewColumnLayoutItem>
                    <dx:CardViewColumnLayoutItem ColumnName="UnitsOnOrder">
                    </dx:CardViewColumnLayoutItem>
                    <dx:CardViewColumnLayoutItem ColumnName="Discontinued">
                    </dx:CardViewColumnLayoutItem>
                    <dx:EditModeCommandLayoutItem HorizontalAlign="Right">
                    </dx:EditModeCommandLayoutItem>
                </Items>
            </CardLayoutProperties>
        </dx:ASPxCardView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\nwind.mdb;Persist Security Info=True" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?" InsertCommand="INSERT INTO [Products] ([ProductID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Discontinued]) VALUES (?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT [ProductID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Discontinued] FROM [Products]" UpdateCommand="UPDATE [Products] SET [UnitPrice] = ?, [UnitsInStock] = ?, [UnitsOnOrder] = ?, [Discontinued] = ? WHERE [ProductID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="Discontinued" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="Discontinued" Type="Boolean" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
