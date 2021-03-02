<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="thembai.aspx.cs" Inherits="test1.admin.thembai" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="text-center" colspan="2">THÊM BÀI</td>
        </tr>
        <tr>
            <td class="text-right">Tên bài:</td>
            <td>
                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm " />
                <asp:Button ID="btnhuy" runat="server" OnClick="btnhuy_Click" Text="Hủy" />
            </td>
        </tr>
    </table>
</asp:Content>
