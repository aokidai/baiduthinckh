<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="thembaitap.aspx.cs" Inherits="test1.admin.thembaitap" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="height: 36px"></td>
            <td style="height: 36px">Thêm bài tập</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Bài"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddbai" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenBai" DataValueField="Bai">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [bai]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label2" runat="server" Text="Câu hỏi"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcauhoi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label3" runat="server" Text="Câu A"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txta" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label4" runat="server" Text="Câu B"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtb" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label5" runat="server" Text="Câu C"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label6" runat="server" Text="Câu D"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label7" runat="server" Text="Đáp Án"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdapan" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm bài tập" />
            </td>
        </tr>
        </table>
</asp:Content>
