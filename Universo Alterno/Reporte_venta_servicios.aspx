<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporte_venta_servicios.aspx.cs" Inherits="Universo_Alterno.Reporte_venta_servicios" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 460px">           
           
    
           
    <form id="form1" runat="server">
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="957px">
            <LocalReport ReportPath="reporte.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Universo_Alterno.testTableAdapters.SalesFormTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="String" />
                <asp:Parameter Name="sala" Type="String" />
                <asp:Parameter Name="usuario" Type="String" />
                <asp:Parameter Name="proveedor" Type="String" />
                <asp:Parameter Name="instrumento_adicional" Type="String" />
                <asp:Parameter Name="tiempo" Type="String" />
                <asp:Parameter Name="total" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sala" Type="String" />
                <asp:Parameter Name="usuario" Type="String" />
                <asp:Parameter Name="proveedor" Type="String" />
                <asp:Parameter Name="instrumento_adicional" Type="String" />
                <asp:Parameter Name="tiempo" Type="String" />
                <asp:Parameter Name="total" Type="String" />
                <asp:Parameter Name="Original_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
           
    
           
</body>
</html>
