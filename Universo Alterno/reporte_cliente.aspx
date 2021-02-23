<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reporte_cliente.aspx.cs" Inherits="Universo_Alterno.reporte_cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 440px">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 422px; top: 19px; position: absolute; width: 241px; height: 30px;" Text="Mejor vendedor"></asp:Label>
        <div style="height: 446px">
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="353px" style="margin-left: 230px; margin-top: 51px" Width="648px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="proveedor" YValueMembers="total">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT [proveedor], [total] FROM [PurchasesForm]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
