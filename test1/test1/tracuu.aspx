<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="tracuu.aspx.cs" Inherits="test1.tracuu" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>AutoComplete Box with jQuery</title>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery.min.js" type="text/javascript"></script>
    <script src="jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".autosuggest").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json;charset=utf-8",
                        url: "tracuu.aspx/GetAutoCompleteData",
                        data: "{'username':'" + document.getElementById('txtSearch').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert("Error");
                        }
                    });
                }
            });
        });

    </script>
</head>
    <body>
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                 
                <label>Enter UserName: </label>  
         <asp:TextBox runat="server" ID="txtSearch" CssClass="autosuggest"></asp:TextBox>
                 
            </td>
            <td>
                <asp:GridView ID="grtim" runat="server" AutoGenerateColumns="False" DataKeyNames="HiraganaID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="HiraganaID" HeaderText="HiraganaID" InsertVisible="False" ReadOnly="True" SortExpression="HiraganaID" />
                        <asp:BoundField DataField="HiraWord" HeaderText="HiraWord" SortExpression="HiraWord" />
                        <asp:BoundField DataField="KanjiWord" HeaderText="KanjiWord" SortExpression="KanjiWord" />
                        <asp:BoundField DataField="MeanWord" HeaderText="MeanWord" SortExpression="MeanWord" />
                        <asp:BoundField DataField="Bai" HeaderText="Bai" SortExpression="Bai" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [Word] WHERE ([MeanWord] LIKE '%' + @MeanWord + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="MeanWord" QueryStringField="MeanWord" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btntim" runat="server" OnClick="btntim_Click" Text="Tìm" />
            </td>
            <td>
              &nbsp;  
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </body>
 <script src="/assets/client/js/controller/baseController.js"></script>  
    </html>
</asp:Content>
