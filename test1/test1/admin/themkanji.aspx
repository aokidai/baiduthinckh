<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="themkanji.aspx.cs" Inherits="test1.admin.themkanji" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
    <tr>
        <td colspan="2">Thêm kanji</td>
    </tr>
    <tr>
        <td>Kanji</td>
        <td>
            <asp:TextBox ID="txtkanji" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Hira</td>
        <td>
            <asp:TextBox ID="txthira" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mean</td>
        <td>
            <asp:TextBox ID="txtmean" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Hán tự</td>
        <td>
            <asp:TextBox ID="txthantu" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Bài</td>
        <td>
            <asp:DropDownList ID="ddbai" runat="server" DataSourceID="SqlDataSource1" DataTextField="Tenbai" DataValueField="Bai">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [bai]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Btnthem" runat="server" OnClick="Btnthem_Click" Text="Thêm" />
            <asp:Button ID="btnhuy" runat="server" OnClick="btnhuy_Click" Text="Hủy" />
        </td>
    </tr>
</table>
</asp:Content>
