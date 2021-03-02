<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="nguphap.aspx.cs" Inherits="test1.admin.nguphap" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server"><a href="themnguphap.aspx">Thêm ngữ pháp</a></asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NguPhapID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="NguPhapID" HeaderText="NguPhapID" InsertVisible="False" ReadOnly="True" SortExpression="NguPhapID" Visible="False" />
                    <asp:BoundField DataField="Bai" HeaderText="Bài" SortExpression="Bai" />
                    <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" SortExpression="NoiDung" />
                    <asp:BoundField DataField="CongThuc" HeaderText="Công thức" SortExpression="CongThuc" />
                    <asp:CommandField ButtonType="Image" CancelImageUrl="~/image/Cancel.jpg" EditImageUrl="~/image/Edit.png" HeaderText="Sửa" ShowEditButton="True" UpdateImageUrl="~/image/Save.jpg" />
                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/image/Delete.jpg" HeaderText="Xóa" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [NguPhap] WHERE [NguPhapID] = @NguPhapID" InsertCommand="INSERT INTO [NguPhap] ([Bai], [NoiDung], [CongThuc]) VALUES (@Bai, @NoiDung, @CongThuc)" SelectCommand="SELECT * FROM [NguPhap]" UpdateCommand="UPDATE [NguPhap] SET [Bai] = @Bai, [NoiDung] = @NoiDung, [CongThuc] = @CongThuc WHERE [NguPhapID] = @NguPhapID">
                <DeleteParameters>
                    <asp:Parameter Name="NguPhapID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Bai" Type="Int32" />
                    <asp:Parameter Name="NoiDung" Type="String" />
                    <asp:Parameter Name="CongThuc" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Bai" Type="Int32" />
                    <asp:Parameter Name="NoiDung" Type="String" />
                    <asp:Parameter Name="CongThuc" Type="String" />
                    <asp:Parameter Name="NguPhapID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
