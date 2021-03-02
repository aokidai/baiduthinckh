<%@ Page Title="" Language="C#" MasterPageFile="~/N5/N5.Master" AutoEventWireup="true" CodeBehind="nguphap.aspx.cs" Inherits="test1.N5.nguphap" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="card-body">
                <div class="d-flex  justify-content-between  flex-wrap mb-3">
                     
                         <a class="btn btn-warning btn-sm " href="../kanji/kanji1.aspx">
                        <svg class="svg-inline--fa fa-backward fa-w-16 mr-0 mr-md-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="backward" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M11.5 280.6l192 160c20.6 17.2 52.5 2.8 52.5-24.6V96c0-27.4-31.9-41.8-52.5-24.6l-192 160c-15.3 12.8-15.3 36.4 0 49.2zm256 0l192 160c20.6 17.2 52.5 2.8 52.5-24.6V96c0-27.4-31.9-41.8-52.5-24.6l-192 160c-15.3 12.8-15.3 36.4 0 49.2z"></path></svg><!-- <span class="fas fa-backward mr-0 mr-md-1"></span> -->
                        <span class="d-none d-md-inline-block">Bài trước</span>
                    </a>
                  
                    <a class="btn btn-warning btn-sm " href="../nguphap/nguphap2.aspx">
                        <span class="d-none d-md-inline-block">Bài sau</span>
                        <svg class="svg-inline--fa fa-forward fa-w-16 ml-0 ml-md-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="forward" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M500.5 231.4l-192-160C287.9 54.3 256 68.6 256 96v320c0 27.4 31.9 41.8 52.5 24.6l192-160c15.3-12.8 15.3-36.4 0-49.2zm-256 0l-192-160C31.9 54.3 0 68.6 0 96v320c0 27.4 31.9 41.8 52.5 24.6l192-160c15.3-12.8 15.3-36.4 0-49.2z"></path></svg><!-- <span class="fas fa-forward ml-0 ml-md-1"></span> -->
                    </a>
                </div>
              <div>
                  <br/>
    <div class="text-justify" style="text-align: center; margin-left:20%" align="center">
        <div class="text-justify" style="text-align: center; margin-left:40%" align="center">
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="Bai" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <div class="text-center"></div>
                                    <asp:Label ID="TenBaiLabel" runat="server" Text='<%# Eval("TenBai") %>' />
                                    <br />
                            </ItemTemplate>
                        </asp:DataList>
            </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [bai] WHERE ([Bai] = @Bai)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="Bai" QueryStringField="Bai" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="NguPhapID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="NguPhapID" HeaderText="NguPhapID" InsertVisible="False" ReadOnly="True" SortExpression="NguPhapID" Visible="False" />
            <asp:BoundField DataField="Bai" HeaderText="Bai" SortExpression="Bai" Visible="False" />
            <asp:BoundField DataField="NoiDung" HeaderText="Nội Dung" SortExpression="NoiDung" />
            <asp:BoundField DataField="CongThuc" HeaderText="Công Thức" SortExpression="CongThuc" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [NguPhap] WHERE ([Bai] = @Bai)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Bai" QueryStringField="Bai" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
