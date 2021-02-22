<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="Universo_Alterno.Inventario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="border-style: hidden;width: 44%; margin-left: 286px; margin-right: 0px; height: 238px;">
        <tr>
            <td style="border-style: hidden;width: 39px; color: #006666; font-size: medium"><em><strong>Inventario</strong></em></td>
            <td style="border-style: hidden;width: 66px">&nbsp;</td>
            <td style="border-style: hidden;width: 232px">&nbsp;</td>
            <td style="border-style: hidden;width: 106px">&nbsp;</td>
            <td style="border-style: hidden;width: 133px">&nbsp;</td>
            <td style="border-style: hidden;"rowspan="8" style="width: 353px">
                <br />
                <img alt="" src="<%: ResolveUrl("~/images/inventario_image.jpg") %>" style="width: 357px; height: 236px" /></td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 39px">&nbsp;</td>
            <td style="border-style: hidden;width: 66px" class="right">
                    <strong>
                    <asp:Label ID="lblroomname" runat="server" Text="Nombre Sala:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;width: 232px">
                    <asp:TextBox ID="txtroomname" runat="server" Width="81px" Autocomplete="off"></asp:TextBox>
                    </td>
            <td style="border-style: hidden;"class="center" colspan="2">
                    <asp:Button ID="btninsert" runat="server" Text="Ingresar" OnClick="btninsert_Click"  />
                </td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 39px">&nbsp;</td>
            <td style="border-style: hidden;width: 66px" class="right">
                    <strong>
                    <asp:Label ID="lblguitar1" runat="server" Text="Amp. Guitar 1:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;width: 232px">
                    <asp:TextBox ID="txtguitar1" runat="server" Width="158px" TextMode="MultiLine" Height="17px" Autocomplete="off"></asp:TextBox>
                    </td>
            <td class="center" colspan="2">
                    <asp:Button ID="btnupdate" runat="server" Text="Actualizar" Height="22px" OnClick="btnupdate_Click"  />
                </td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 39px">&nbsp;</td>
            <td style="border-style: hidden;width: 66px" class="right">
                    <strong>
                    <asp:Label ID="lblguitar2" runat="server" Text="Amp. Guitar 2:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;width: 232px">
                    <asp:TextBox ID="txtguitar2" runat="server" Width="160px" Height="16px" TextMode="MultiLine" Autocomplete="off"></asp:TextBox>
                    </td>
            <td class="center" colspan="2">
                    <asp:Button ID="btndelete" runat="server" Text="Eliminar" OnClick="btndelete_Click"  />
                </td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 39px">&nbsp;</td>
            <td style="border-style: hidden;width: 66px" class="right">
                    <strong>
                    <asp:Label ID="lblbass" runat="server" Text="Amp. Bass:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;width: 232px">
                    <asp:TextBox ID="txtbass" runat="server" Width="160px" Height="19px" TextMode="MultiLine" Autocomplete="off"></asp:TextBox>
                    </td>
            <td style="border-style: hidden;width: 106px">&nbsp;</td>
            <td style="border-style: hidden;width: 133px">&nbsp;</td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 39px"></td>
            <td style="border-style: hidden;width: 66px" class="right">
                    <strong>
                    <asp:Label ID="lbldrums" runat="server" Text="Batería: " style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;width: 232px">
                    <asp:TextBox ID="txtdrums" runat="server" Width="160px" Height="16px" TextMode="MultiLine" Autocomplete="off"></asp:TextBox>
                    </td>
            <td style="border-style: hidden;width: 106px" class="right">
                    <strong>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblroomsize" runat="server" Text="Tamaño Sala:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;width: 133px">
                    <asp:TextBox ID="txtroomsize" runat="server" Width="100px" Autocomplete="off"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 39px">&nbsp;</td>
            <td style="border-style: hidden;width: 66px" class="right">
                    <strong>
                    <asp:Label ID="lblconsole" runat="server" Text="Consola: " style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;width: 232px">
                    <asp:TextBox ID="txtconsole" runat="server" Width="161px" Height="16px" TextMode="MultiLine" Autocomplete="off"></asp:TextBox>
                    </td>
            <td style="border-style: hidden;width: 106px">&nbsp;</td>
            <td style="border-style: hidden;width: 133px">&nbsp;</td>
        </tr>
        <tr>
            <td style="border-style: hidden;width: 39px; height: 30px"></td>
            <td style="border-style: hidden;width: 66px; height: 30px" class="right">
                    <strong>
                    <asp:Label ID="lblmic" runat="server" Text="Micrófono:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;width: 232px; height: 30px">
                    <asp:TextBox ID="txtmic" runat="server" Width="153px" Height="16px" TextMode="MultiLine" Autocomplete="off"></asp:TextBox>
                    </td>
            <td style="border-style: hidden;height: 30px; width: 106px" class="right">
                    <strong>
                    <asp:Label ID="lblroomsize0" runat="server" Text="Codigo a eliminar o actualizar:" style="color: #000000"></asp:Label>
                    </strong>
                </td>
            <td style="border-style: hidden;height: 30px; width: 133px">
                    <asp:TextBox ID="txtcodeinven" runat="server" Width="97px" Autocomplete="off"></asp:TextBox>
                    </td>
        </tr>
    </table>
    &nbsp;<br />
    <asp:GridView ID="gvdinventory" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 357px" Width="768px" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="7" EmptyDataText="There's no records">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="roomname" HeaderText="roomname" SortExpression="roomname" />
            <asp:BoundField DataField="amp_guitar1" HeaderText="amp_guitar1" SortExpression="amp_guitar1" />
            <asp:BoundField DataField="amp_guitar2" HeaderText="amp_guitar2" SortExpression="amp_guitar2" />
            <asp:BoundField DataField="amp_bass" HeaderText="amp_bass" SortExpression="amp_bass" />
            <asp:BoundField DataField="drums" HeaderText="drums" SortExpression="drums" />
            <asp:BoundField DataField="console" HeaderText="console" SortExpression="console" />
            <asp:BoundField DataField="mic" HeaderText="mic" SortExpression="mic" />
            <asp:BoundField DataField="roomsize" HeaderText="roomsize" SortExpression="roomsize" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Universo_AlternoConnectionString %>" SelectCommand="SELECT * FROM [InventoryForm]"></asp:SqlDataSource>
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
