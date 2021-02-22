<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Universo_Alterno.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <table style="border-style: hidden;width: 62%; height: 203px; margin-left: 280px;">
            <tr>
                <td style="border-style: hidden;width: 66px; height: 15px;">&nbsp;<strong><span class="auto-style1" style="color: #006666"><em>Usuarios</em></span></strong></td>
                <td style="border-style: hidden;width: 105px; height: 15px;"></td>
                <td style="border-style: hidden;width: 183px; height: 15px;"></td>
                <td style="border-style: hidden;width: 130px; height: 15px;"></td>
                <!--IMPORTANTE
                Creo que se pueden dejar los botones de buscar y get que hagan lo mismo de salir en tabla y textbox-->
                <td rowspan="5" style="border-style: hidden;width: 251px">
                    <img alt="" src="<%: ResolveUrl("~/images/Users_image.jpg") %>" style="border-style: hidden;width: 341px; height: 192px; margin-left: 2px;" /></td>
            </tr>
            <tr>
                <td style="border-style: hidden;width: 66px; height: 36px;"></td>
                <td style="border-style: hidden;width: 105px; color: #000000; height: 36px;" class="right">
                    <strong>
                    <asp:Label ID="lblbandname" runat="server" Text="Nombre Banda:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
                <td style="border-style: hidden;width: 183px; height: 36px;">
                    <asp:TextBox ID="txtbandname" runat="server" Width="140px" Autocomplete="off"></asp:TextBox>
                    </td>
                <td style="border-style: hidden;width: 130px; height: 36px;" class="center">
                    <asp:Button ID="btninsert" runat="server" Text="Ingresar" OnClick="btninsert_Click" Width="73px" />
                </td>
            </tr>
            <tr>
                <td style="border-style: hidden;width: 66px; height: 22px;"></td>
                <td style="border-style: hidden;width: 105px; height: 22px;" class="right">
                    <strong>
                    <asp:Label ID="lbltel" runat="server" Text="Teléfono: " style="color: #000000"></asp:Label>
                    </strong>
                </td>
                <td style="border-style: hidden;width: 183px; height: 22px;">
                    <asp:TextBox ID="txttel" runat="server" Width="120px" Autocomplete="off" ></asp:TextBox>
                </td>
                <td style="border-style: hidden;width: 130px; height: 22px;" class="center">
                    <asp:Button ID="btnupdate" runat="server" Text="Actualizar" OnClick="btnupdate_Click" Width="74px" />
                </td>
            </tr>
            <tr>
                <td style="border-style: hidden;width: 66px">&nbsp;</td>
                <td style="border-style: hidden;width: 105px" class="right">
                    <strong>
                    <asp:Label ID="lblcorreo" runat="server" Text="Correo: " style="color: #000000"></asp:Label>
                    </strong>
                </td>
                <td style="border-style: hidden;width: 183px">
                    <asp:TextBox ID="txtemail" runat="server" Width="154px" Autocomplete="off"></asp:TextBox>
                </td>
                <td style="border-style: hidden;width: 130px" class="center">
                    <asp:Button ID="btndelete" runat="server" Text="Eliminar" OnClick="btndelete_Click" />
                </td>
            </tr>
            <tr>
                <td class="center" style="border-style: hidden;height: 29px; width: 66px;"></td>
                <td class="right" style="border-style: hidden;width: 105px; height: 29px;"><strong>
                    <asp:Label ID="lblcode" runat="server" Text="Código a borrar o actualizar:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
                <td style="border-style: hidden;width: 183px; height: 29px;">
                    <asp:TextBox ID="txtcode" runat="server" Width="79px" Autocomplete="off"></asp:TextBox>
                </td>
                <td style="border-style: hidden;width: 130px; height: 29px;">
                    
                </td>
            </tr>
        </table>
        <br />
<asp:GridView ID="gvdusers" runat="server" style="margin-left: 525px; margin-right: 0px" Width="161px" Height="64px" CellPadding="4" EmptyDataText="There's no records" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="7" >
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="bandname" HeaderText="bandname" SortExpression="bandname" />
        <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
    </Columns>
    <FooterStyle BorderStyle="None" BackColor="#990000" Font-Bold="True" ForeColor="White" />
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

&nbsp;&nbsp;
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
    <!--</p>-->
<br />
<br />
<br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT * FROM [UsersForm]"></asp:SqlDataSource>

</asp:Content>
