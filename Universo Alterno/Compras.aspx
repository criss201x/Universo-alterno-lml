<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="Universo_Alterno.Compras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-style: hidden;width: 75%; height: 203px; margin-left: 223px">
    <tr>
        <td style="border-style: hidden;color: #006666; font-size: medium; width: 83px;"><strong><em>Compras</em></strong></td>
        <td style="border-style: hidden;
width: 105px">&nbsp;</td>
        <td style="border-style: hidden;
width: 82px">&nbsp;</td>
        <td style="border-style: hidden;
width: 71px">&nbsp;</td>
        <td style="border-style: hidden; width: 147px;" class="auto-style8">&nbsp;</td>
        <td rowspan="5">
            <img alt="" src="<%: ResolveUrl("~/images/purchase_image.jpg") %>" style="width: 344px; height: 188px" /></td>
    </tr>
    <tr>
        <td style="border-style: hidden;
width: 83px">&nbsp;</td>
        <td style="border-style: hidden;
width: 105px" class="right">
                    <strong>
                    <asp:Label ID="lblproveedor" runat="server" Text="Seleccione Proveedor:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
        <td style="border-style: hidden;
width: 82px">
            <asp:DropDownList ID="dwnprov" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="nombre">
            </asp:DropDownList>
        </td>
        <td style="border-style: hidden;
width: 71px" class="right">
                    <strong>
                    <asp:Label ID="lblvalor" runat="server" Text="Valor: " style="color: #000000"></asp:Label>
                    </strong>
                </td>
        <td style="border-style: hidden; width: 147px;" class="auto-style8">
                    <asp:TextBox ID="txtvalue" runat="server" Width="117px" Autocomplete="off"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td style="border-style: hidden;
width: 83px">&nbsp;</td>
        <td style="border-style: hidden;
width: 105px" class="right">
                    <strong>
                    <asp:Label ID="lblcompra" runat="server" Text="Se comprará:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
        <td style="border-style: hidden;
width: 82px">
            <asp:DropDownList ID="dwncompra" runat="server">
                <asp:ListItem>Guitarra</asp:ListItem>
                <asp:ListItem>Bajo</asp:ListItem>
                <asp:ListItem>Bateria</asp:ListItem>
                <asp:ListItem>Voz</asp:ListItem>
                <asp:ListItem>Otro</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="border-style: hidden;
width: 71px" class="right">
                    <strong>
                    <asp:Label ID="lbldescrip" runat="server" Text="Descripción:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
        <td style="border-style: hidden; width: 147px;" class="auto-style8">
                    <asp:TextBox ID="txtinf" runat="server" Width="152px" Autocomplete="off" Height="21px" TextMode="MultiLine"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td style="border-style: hidden;
width: 83px">&nbsp;</td>
        <td style="border-style: hidden;
width: 105px" class="right">
                    <strong>
                    <asp:Label ID="lblcantidad" runat="server" Text="Cantidad:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
        <td style="border-style: hidden;
width: 82px">
            <asp:DropDownList ID="dwncant" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem Value="1">No aplica</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="border-style: hidden;
width: 71px">&nbsp;</td>
        <td style="border-style: hidden; width: 147px;" class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td style="border-style: hidden;
width: 83px">&nbsp;</td>
        <td style="border-style: hidden;
width: 105px">&nbsp;</td>
        <td style="border-style: hidden;
width: 82px">&nbsp;&nbsp;</td>
        <td colspan="2" style="border-style: hidden;margin-left: 40px" class="center">&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Aceptar" />
        </td>
    </tr>
</table>
<br />
<asp:GridView ID="gdvpurchases" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="margin-left: 340px" Width="597px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="proveedor" HeaderText="proveedor" SortExpression="proveedor" />
        <asp:BoundField DataField="comprar" HeaderText="comprar" SortExpression="comprar" />
        <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
        <asp:BoundField DataField="costo" HeaderText="costo" SortExpression="costo" />
        <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT * FROM [PurchasesForm]"></asp:SqlDataSource>
<br />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT [nombre] FROM [ProvForm]"></asp:SqlDataSource>
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
