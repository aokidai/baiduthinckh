<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="tuvung.aspx.cs" Inherits="test1.admin.tuvung" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width: 100%;">
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server"><a href="themtu.aspx">Thêm từ</a></asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="HiraganaID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="HiraganaID" HeaderText="HiraganaID" InsertVisible="False" ReadOnly="True" SortExpression="HiraganaID" Visible="False" />
                    <asp:BoundField DataField="HiraWord" HeaderText="HiraWord" SortExpression="HiraWord" />
                    <asp:BoundField DataField="KanjiWord" HeaderText="KanjiWord" SortExpression="KanjiWord" />
                    <asp:BoundField DataField="MeanWord" HeaderText="MeanWord" SortExpression="MeanWord" />
                    <asp:BoundField DataField="Bai" HeaderText="Bai" SortExpression="Bai" />
                    <asp:CommandField ButtonType="Image" CancelImageUrl="~/image/Cancel.jpg" EditImageUrl="~/image/Edit.png" HeaderText="Sửa" ShowEditButton="True" UpdateImageUrl="~/image/Save.jpg" />
                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/image/Delete.jpg" HeaderText="Xóa" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [Word] WHERE [HiraganaID] = @HiraganaID" InsertCommand="INSERT INTO [Word] ([HiraWord], [KanjiWord], [MeanWord], [Bai]) VALUES (@HiraWord, @KanjiWord, @MeanWord, @Bai)" SelectCommand="SELECT * FROM [Word]" UpdateCommand="UPDATE [Word] SET [HiraWord] = @HiraWord, [KanjiWord] = @KanjiWord, [MeanWord] = @MeanWord, [Bai] = @Bai WHERE [HiraganaID] = @HiraganaID">
                <DeleteParameters>
                    <asp:Parameter Name="HiraganaID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HiraWord" Type="String" />
                    <asp:Parameter Name="KanjiWord" Type="String" />
                    <asp:Parameter Name="MeanWord" Type="String" />
                    <asp:Parameter Name="Bai" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HiraWord" Type="String" />
                    <asp:Parameter Name="KanjiWord" Type="String" />
                    <asp:Parameter Name="MeanWord" Type="String" />
                    <asp:Parameter Name="Bai" Type="Int32" />
                    <asp:Parameter Name="HiraganaID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
