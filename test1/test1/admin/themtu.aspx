<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="themtu.aspx.cs" Inherits="test1.admin.themtu" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>HiraWord</td>
            <td>
                <asp:TextBox ID="txthira" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>KanjiWord</td>
            <td>
                <asp:TextBox ID="txtkanji" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MeanWord</td>
            <td>
                <asp:TextBox ID="txtmean" runat="server"></asp:TextBox>
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
                <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm " />
                <asp:Button ID="Btnhuy" runat="server" OnClick="Btnhuy_Click" Text="Hủy" />
            </td>
        </tr>
    </table>

</asp:Content>
