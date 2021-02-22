<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="Universo_Alterno.Proveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">









    <table style="border-style: hidden;width: 80%; height: 206px; margin-left: 240px">
        <tr>
            <td style="border-style: hidden;color: #006666; font-size: medium; width: 8px;"><strong><em>Proveedores</em></strong></td>
            <td style="border-style: hidden;width: 113px">&nbsp;</td>
            <td style="border-style: hidden;width: 280px">&nbsp;</td>
            <td style="border-style: hidden;width: 22px">&nbsp;</td>
            <td style="border-style: hidden;width: 69px">&nbsp;</td>
            <td style="border-style: hidden;width: 87px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 8px; height: 37px;"></td>
            <td class="right" style="border-style: hidden;width: 113px; height: 37px;"><strong>
                    <asp:Label ID="lblcode" runat="server" Text="Código a borrar o actualizar:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;width: 280px; height: 37px;">
                <asp:TextBox ID="txtcodeprov" runat="server" Width="74px" Autocomplete="off"></asp:TextBox>
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong></td>
            <td style="border-style: hidden;width: 22px; height: 37px;">
                </td>
            <td style="border-style: hidden;width: 69px; height: 37px;" class="center">
                &nbsp;</td>
            <td rowspan="6">
                <img alt="" src="<%: ResolveUrl("~/images/proveedores_image.jpg") %>" style="border-style: hidden;width: 305px; height: 247px; margin-left: 19px;" /></td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 8px; height: 28px;"></td>
            <td class="right" style="border-style: hidden;width: 113px; height: 28px;"><strong>
                <asp:Label ID="Label2" runat="server" style="color: #000000" Text="Nombre:"></asp:Label>
                </strong></td>
            <td style="border-style: hidden;width: 280px; height: 28px;">
                <asp:TextBox ID="txtnameprov" runat="server" Width="193px" Autocomplete="off"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="border-style: hidden;width: 22px; height: 28px;">
                </td>
            <td style="border-style: hidden;width: 69px; height: 28px;" class="center">
                <asp:Button ID="btninsert" runat="server" Text="Ingresar" OnClick="btninsert_Click" />
            </td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 8px">&nbsp;</td>
            <td class="right" style="border-style: hidden;width: 113px"><strong>
                <asp:Label ID="Label3" runat="server" style="color: #000000" Text="Teléfono:"></asp:Label>
                </strong></td>
            <td style="border-style: hidden;width: 280px">
                <asp:TextBox ID="txttelprov" runat="server" Width="128px" Autocomplete="off"></asp:TextBox>
            </td>
            <td style="border-style: hidden;width: 22px">
                &nbsp;</td>
            <td style="border-style: hidden;width: 69px">
                <asp:Button ID="btnupdate" runat="server" Text="Actualizar" OnClick="btnupdate_Click" />
            </td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 8px">&nbsp;</td>
            <td class="right" style="border-style: hidden;width: 113px"><strong>
                <asp:Label ID="Label4" runat="server" style="color: #000000" Text="Correo:"></asp:Label>
                </strong></td>
            <td style="border-style: hidden;width: 280px">
                <asp:TextBox ID="txtemail" runat="server" Width="180px" Autocomplete="off"></asp:TextBox>
            </td>
            <td style="border-style: hidden;width: 22px">
                &nbsp;</td>
            <td style="border-style: hidden;width: 69px" class="center">
                <asp:Button ID="btndelete" runat="server" Text="Eliminar" OnClick="btndelete_Click" />
            </td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 8px">&nbsp;</td>
            <td class="right" style="border-style: hidden;width: 113px"><strong>
                <asp:Label ID="Label5" runat="server" style="color: #000000" Text="Dirección:"></asp:Label>
                </strong></td>
            <td style="border-style: hidden;width: 280px">
                <asp:TextBox ID="txtdir" runat="server" Width="181px" Autocomplete="off"></asp:TextBox>
            </td>
            <td style="border-style: hidden;width: 22px">&nbsp;</td>
            <td style="border-style: hidden;width: 69px">&nbsp;</td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 8px">&nbsp;</td>
            <td class="border-style: hidden;right" style="border-style: hidden;width: 113px"><strong>
                <asp:Label ID="Label6" runat="server" style="color: #000000" Text="Descripción:"></asp:Label>
                </strong></td>
            <td style="border-style: hidden;width: 280px">
                <asp:TextBox ID="txtinfo" runat="server" Height="50px" Width="253px" TextMode="MultiLine" OnTextChanged="txtinfo_TextChanged" Autocomplete="off"></asp:TextBox>
            </td>
            <td style="border-style: hidden;width: 22px" class="right">
                <strong>
                <asp:Label ID="Label7" runat="server" style="color: #000000" Text="Servicio para:"></asp:Label>
                </strong></td>
            <td style="border-style: hidden;width: 69px">
                <asp:DropDownList ID="dwnlist" runat="server" AutoPostBack="True" Height="17px" Width="118px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Guitarra</asp:ListItem>
                    <asp:ListItem>Bajo</asp:ListItem>
                    <asp:ListItem>Bateria</asp:ListItem>
                    <asp:ListItem>Micrófono</asp:ListItem>
                    <asp:ListItem>Electrónica</asp:ListItem>
                    <asp:ListItem>Amplificadores</asp:ListItem>
                    <asp:ListItem>Otros</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <asp:GridView ID="gdvprov" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There's no records"  ForeColor="#333333" GridLines="None" PageSize="7" style="margin-left: 345px" Width="742px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT * FROM [ProvForm]"></asp:SqlDataSource>
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
