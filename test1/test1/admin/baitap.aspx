<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="baitap.aspx.cs" Inherits="test1.admin.baitap" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server"><a href="thembaitap.aspx">Thêm bài tập </a></asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TestID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="TestID" HeaderText="TestID" InsertVisible="False" ReadOnly="True" SortExpression="TestID" />
                        <asp:BoundField DataField="Bai" HeaderText="Bai" SortExpression="Bai" />
                        <asp:BoundField DataField="Cauhoi" HeaderText="Cauhoi" SortExpression="Cauhoi" />
                        <asp:BoundField DataField="CauA" HeaderText="CauA" SortExpression="CauA" />
                        <asp:BoundField DataField="CauB" HeaderText="CauB" SortExpression="CauB" />
                        <asp:BoundField DataField="CauC" HeaderText="CauC" SortExpression="CauC" />
                        <asp:BoundField DataField="CauD" HeaderText="CauD" SortExpression="CauD" />
                        <asp:BoundField DataField="DapAn" HeaderText="DapAn" SortExpression="DapAn" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [Test] WHERE [TestID] = @original_TestID AND (([Bai] = @original_Bai) OR ([Bai] IS NULL AND @original_Bai IS NULL)) AND [Cauhoi] = @original_Cauhoi AND [CauA] = @original_CauA AND [CauB] = @original_CauB AND [CauC] = @original_CauC AND (([CauD] = @original_CauD) OR ([CauD] IS NULL AND @original_CauD IS NULL)) AND [DapAn] = @original_DapAn" InsertCommand="INSERT INTO [Test] ([Bai], [Cauhoi], [CauA], [CauB], [CauC], [CauD], [DapAn]) VALUES (@Bai, @Cauhoi, @CauA, @CauB, @CauC, @CauD, @DapAn)" SelectCommand="SELECT * FROM [Test]" UpdateCommand="UPDATE [Test] SET [Bai] = @Bai, [Cauhoi] = @Cauhoi, [CauA] = @CauA, [CauB] = @CauB, [CauC] = @CauC, [CauD] = @CauD, [DapAn] = @DapAn WHERE [TestID] = @original_TestID AND (([Bai] = @original_Bai) OR ([Bai] IS NULL AND @original_Bai IS NULL)) AND [Cauhoi] = @original_Cauhoi AND [CauA] = @original_CauA AND [CauB] = @original_CauB AND [CauC] = @original_CauC AND (([CauD] = @original_CauD) OR ([CauD] IS NULL AND @original_CauD IS NULL)) AND [DapAn] = @original_DapAn" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                    <DeleteParameters>
                        <asp:Parameter Name="original_TestID" Type="Int32" />
                        <asp:Parameter Name="original_Bai" Type="Int32" />
                        <asp:Parameter Name="original_Cauhoi" Type="String" />
                        <asp:Parameter Name="original_CauA" Type="String" />
                        <asp:Parameter Name="original_CauB" Type="String" />
                        <asp:Parameter Name="original_CauC" Type="String" />
                        <asp:Parameter Name="original_CauD" Type="String" />
                        <asp:Parameter Name="original_DapAn" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Bai" Type="Int32" />
                        <asp:Parameter Name="Cauhoi" Type="String" />
                        <asp:Parameter Name="CauA" Type="String" />
                        <asp:Parameter Name="CauB" Type="String" />
                        <asp:Parameter Name="CauC" Type="String" />
                        <asp:Parameter Name="CauD" Type="String" />
                        <asp:Parameter Name="DapAn" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Bai" Type="Int32" />
                        <asp:Parameter Name="Cauhoi" Type="String" />
                        <asp:Parameter Name="CauA" Type="String" />
                        <asp:Parameter Name="CauB" Type="String" />
                        <asp:Parameter Name="CauC" Type="String" />
                        <asp:Parameter Name="CauD" Type="String" />
                        <asp:Parameter Name="DapAn" Type="String" />
                        <asp:Parameter Name="original_TestID" Type="Int32" />
                        <asp:Parameter Name="original_Bai" Type="Int32" />
                        <asp:Parameter Name="original_Cauhoi" Type="String" />
                        <asp:Parameter Name="original_CauA" Type="String" />
                        <asp:Parameter Name="original_CauB" Type="String" />
                        <asp:Parameter Name="original_CauC" Type="String" />
                        <asp:Parameter Name="original_CauD" Type="String" />
                        <asp:Parameter Name="original_DapAn" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
