<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="bai.aspx.cs" Inherits="test1.admin.bai" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
    <tr>
        <td>
            <asp:HyperLink ID="hlthembai" runat="server"><a href="thembai.aspx">Thêm bài </a></asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Bai" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Bai" HeaderText="Bài" InsertVisible="False" ReadOnly="True" SortExpression="Bai" />
                    <asp:BoundField DataField="Tenbai" HeaderText="Tên bài" SortExpression="Tenbai" />
                    <asp:CommandField CancelImageUrl="~/image/Cancel.jpg" EditImageUrl="~/image/Edit.png" HeaderText="Sửa" ShowEditButton="True" UpdateImageUrl="~/image/Save.jpg" ButtonType="Image" />
                    <asp:CommandField DeleteImageUrl="~/image/Delete.jpg" HeaderText="Xóa" ShowDeleteButton="True" ButtonType="Image" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [bai]" DeleteCommand="DELETE FROM [bai] WHERE [Bai] = @Bai" InsertCommand="INSERT INTO [bai] ([Tenbai]) VALUES (@Tenbai)" UpdateCommand="UPDATE [bai] SET [Tenbai] = @Tenbai WHERE [Bai] = @Bai">
                <DeleteParameters>
                    <asp:Parameter Name="Bai" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Tenbai" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Tenbai" Type="String" />
                    <asp:Parameter Name="Bai" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
