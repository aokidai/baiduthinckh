<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="test1.admin.dangnhap" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width:100%;">
        <tr>
            <td class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmk" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btndn" runat="server"  Text="Đăng nhập" OnClick="btndn_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbBaoloi" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

