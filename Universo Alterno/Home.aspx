<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Universo_Alterno.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 77%; height: 326px; margin-left: 204px;">
        <tr>
            <td style=" border-style: hidden; width: 450px; color: #000000" class="center">
                <br />
                <br />
                <br />
                <span class="auto-style1" style="color: #006666"><strong><em>&nbsp;Home</em></strong></span><br />
                <br />
                <br />
                <span style="font-size: medium"><strong>¡Bienvenido a Universo Alterno sala de ensayo!<br />
                <br />
                ¡Disfruta y exprésate!<br />
                <br />
                </strong></span></td>
            <td style="border-style: hidden;width: 579px" class="center">
                <br />
                &nbsp;<img alt="" src="<%: ResolveUrl("~/images/home_image.jpg") %>" style="width: 344px; height: 255px" /></td>
        </tr>
        </table>
</asp:Content>
