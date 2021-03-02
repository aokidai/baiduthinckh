<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="themnguphap.aspx.cs" Inherits="test1.admin.themnguphap" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
    <tr>
        <td colspan="2">Thêm ngữ pháp</td>
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
        <td>Nội dung</td>
        <td>
            <asp:TextBox ID="txtnoidung" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Công thức</td>
        <td>
            <asp:TextBox ID="txtcthuc" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm" />
            <asp:Button ID="btnhuy" runat="server" OnClick="btnhuy_Click" Text="Hủy" />
        </td>
    </tr>
</table>
</asp:Content>
