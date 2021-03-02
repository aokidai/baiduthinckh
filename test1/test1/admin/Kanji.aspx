<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Kanji.aspx.cs" Inherits="test1.admin.Kanji" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server"><a href="themkanji.aspx">Thêm kanji</a></asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="KanjiID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="KanjiID" HeaderText="KanjiID" InsertVisible="False" ReadOnly="True" SortExpression="KanjiID" Visible="False" />
                    <asp:BoundField DataField="KanjiWord" HeaderText="KanjiWord" SortExpression="KanjiWord" />
                    <asp:BoundField DataField="HiraWord" HeaderText="HiraWord" SortExpression="HiraWord" />
                    <asp:BoundField DataField="MeanWord" HeaderText="MeanWord" SortExpression="MeanWord" />
                    <asp:BoundField DataField="HanTu" HeaderText="HanTu" SortExpression="HanTu" />
                    <asp:BoundField DataField="Bai" HeaderText="Bai" SortExpression="Bai" />
                    <asp:CommandField ButtonType="Image" CancelImageUrl="~/image/Cancel.jpg" EditImageUrl="~/image/Edit.png" HeaderText="Sửa" ShowEditButton="True" UpdateImageUrl="~/image/Save.jpg" />
                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/image/Delete.jpg" HeaderText="Xóa" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [Kanji] WHERE [KanjiID] = @KanjiID" InsertCommand="INSERT INTO [Kanji] ([KanjiWord], [HiraWord], [MeanWord], [HanTu], [Bai]) VALUES (@KanjiWord, @HiraWord, @MeanWord, @HanTu, @Bai)" SelectCommand="SELECT * FROM [Kanji]" UpdateCommand="UPDATE [Kanji] SET [KanjiWord] = @KanjiWord, [HiraWord] = @HiraWord, [MeanWord] = @MeanWord, [HanTu] = @HanTu, [Bai] = @Bai WHERE [KanjiID] = @KanjiID">
                <DeleteParameters>
                    <asp:Parameter Name="KanjiID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="KanjiWord" Type="String" />
                    <asp:Parameter Name="HiraWord" Type="String" />
                    <asp:Parameter Name="MeanWord" Type="String" />
                    <asp:Parameter Name="HanTu" Type="String" />
                    <asp:Parameter Name="Bai" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="KanjiWord" Type="String" />
                    <asp:Parameter Name="HiraWord" Type="String" />
                    <asp:Parameter Name="MeanWord" Type="String" />
                    <asp:Parameter Name="HanTu" Type="String" />
                    <asp:Parameter Name="Bai" Type="Int32" />
                    <asp:Parameter Name="KanjiID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
