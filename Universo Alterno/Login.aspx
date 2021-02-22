<%@ Page Title="" Language="C#" MasterPageFile="~/Login_Plantilla.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Universo_Alterno.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table style="border-style: hidden; border-color: inherit; border-width: medium; height: 56px; width: 101%; margin-top: 13px;" >
        <tr style="border: hidden">
            <div style="margin-left: 40px">
                <td style="border: hidden"><strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="font-size: small" Text="Usuario: "></asp:Label>
&nbsp;</strong></td>
                <td style="border-style: hidden; border-color: inherit; border-width: medium; width: 170px;"><asp:TextBox ID="txtuser" runat="server" Autocomplete="off" Width="101px"></asp:TextBox>
                </td>
                <td rowspan="3" class="light">
                    <img align="left" alt="" class="fl_left" src="<%: ResolveUrl("~/images/login_image.jpg") %>" style=" border-style: hidden;width: 556px; height: 163px; margin-left: 125; margin-top: 0;" /></td>
        </tr>

            <tr style="border: hidden">
                <td style="border-style: hidden; border-color: inherit; border-width: medium; " class="right">&nbsp;<strong><asp:Label ID="Label2" runat="server" style="font-size: small" Text="Contraseña:"></asp:Label>
&nbsp;</strong></td>
                <td style="border-style: hidden; border-color: inherit; border-width: medium; width: 170px;"><asp:TextBox ID="txtpass" runat="server" Autocomplete="off" TextMode="Password" Width="101px"></asp:TextBox>
                </td>
            </tr>
            <tr style="border: hidden">
                <td style="border-style: hidden; border-color: inherit; border-width: medium; height: 68px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </div>
            <td style="border-style: hidden; border-color: inherit; border-width: medium; height: 68px; width: 170px;"> <strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnlogin" runat="server" CssClass="bold" OnClick="btnlogin_Click" style="font-size: small" Text="Submit" Height="25px" Width="108px" />
                    &nbsp;</strong></td>
        </tr>
    </table>
    <br />
    <br />
    <br />
<br />
<br />
    <br />
    <br />
    <br />
</asp:Content>
