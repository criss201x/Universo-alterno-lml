<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="Universo_Alterno.Ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-style: hidden;width: 60%; margin-left: 281px; height: 227px;">
    <tr>
        <td style="border-style: hidden;color: #006666; font-size: medium; width: 90px;"><em><strong>Ventas</strong></em></td>
        <td style="border-style: hidden;width: 111px">&nbsp;</td>
        <td style="border-style: hidden;width: 77px" class="auto-style8">&nbsp;</td>
        <td style="border-style: hidden;width: 39px">&nbsp;</td>
        <td>&nbsp;</td>
        <td style="border-style: hidden; width: 268435440px;"rowspan="5">
            <img alt="" src="<%: ResolveUrl("~/images/sales_image.jpg") %>" style="border-style: hidden;width: 343px; height: 201px; margin-left: 0;" /></td></td>
    </tr>
    <tr>
        <td style="border-style: hidden;width: 90px; height: 24px;"></td>
        <td style="border-style: hidden;height: 24px; width: 111px" class="right">
                    <strong>
                    <asp:Label ID="lblbandname" runat="server" Text="Sala:" style="color: #000000"></asp:Label>
                    </strong>
        </td>
        <td style="border-style: hidden;height: 24px; width: 77px;">
            <asp:DropDownList ID="dwninventory" runat="server" DataSourceID="SqlDataSource2" DataTextField="roomname" DataValueField="roomname">
            </asp:DropDownList>
        </td>
        <td style="border-style: hidden;"colspan="2" rowspan="2">
                    <strong>
                    &nbsp;&nbsp;
                    </strong></td>
    </tr>
    <tr>
        <td style="border-style: hidden;width: 90px; height: 25px;"></td>
        <td style="border-style: hidden;width: 111px; height: 25px;" class="right">
                    <strong>
                    <asp:Label ID="lblbandname0" runat="server" Text="Usuario: " style="color: #000000"></asp:Label>
                    </strong>
        </td>
        <td style="border-style: hidden;width: 77px; height: 25px;">
            <asp:DropDownList ID="dwnuser" runat="server" DataSourceID="SqlDataSource3" DataTextField="bandname" DataValueField="bandname">
            </asp:DropDownList>
            </td>
    </tr>
    <tr>
        <td style="border-style: hidden;width: 90px; height: 5px;"></td>
        <td style="border-style: hidden;width: 111px; height: 5px;" class="right">
                    <strong>
                    <asp:Label ID="lblbandname1" runat="server" Text="Proveedor:" style="color: #000000"></asp:Label>
                    </strong>
        </td>
        <td style="border-style: hidden;width: 77px; height: 5px;" class="auto-style8">
            <asp:DropDownList ID="dwnprov" runat="server" DataSourceID="SqlDataSource4" DataTextField="nombre" DataValueField="nombre">
            </asp:DropDownList>
            </td>
        <td style="border-style: hidden; height: 5px;" class="right">
                    <strong>
                    <asp:Label ID="lblbandname2" runat="server" Text="Instrumento adicional:" style="color: #000000"></asp:Label>
                    </strong>
        </td>
        <td style="border-style: hidden;width: 53px; height: 5px;">
            <asp:DropDownList ID="dwnadicional" runat="server" Height="16px" Width="116px">
                <asp:ListItem Value="2500">Guitarra (2500)</asp:ListItem>
                <asp:ListItem Selected="True" Value="2500">Bajo (2500)</asp:ListItem>
                <asp:ListItem Value="3000">Platos (3000)</asp:ListItem>
                <asp:ListItem Value="3000">Microfono (3000)</asp:ListItem>
                <asp:ListItem Value="3000">Congas (3000)</asp:ListItem>
                <asp:ListItem Value="0">Ninguno</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="border-style: hidden;width: 90px">&nbsp;</td>
        <td style="border-style: hidden;width: 111px" class="right">
                    <strong>
                    <asp:Label ID="lblbandname3" runat="server" Text="Tiempo:" style="color: #000000"></asp:Label>
                    </strong>
        </td>
        <td style="border-style: hidden;width: 77px" class="auto-style8">
            <asp:TextBox ID="txttime" runat="server" Width="53px" ></asp:TextBox>
        </td>
        <td style="border-style: hidden;"colspan="2" class="center">
            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Aceptar" />
        </td>
    </tr>
</table>
    <br />
    <asp:GridView ID="gdvsales" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="margin-left: 395px" Width="485px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="sala" HeaderText="sala" SortExpression="sala" />
            <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
            <asp:BoundField DataField="proveedor" HeaderText="proveedor" SortExpression="proveedor" />
            <asp:BoundField DataField="instrumento_adicional" HeaderText="instrumento_adicional" SortExpression="instrumento_adicional" />
            <asp:BoundField DataField="tiempo" HeaderText="tiempo" SortExpression="tiempo" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT * FROM [SalesForm]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT [roomname] FROM [InventoryForm]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT [bandname] FROM [UsersForm]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT [nombre] FROM [ProvForm]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </asp:Content>
