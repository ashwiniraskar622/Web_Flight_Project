<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ThankYouPage.aspx.cs" Inherits="Web_Flight_Reservation_System.ThankYouPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Button.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 1520px;
            height: 576px;
        }
        .auto-style2 {
            height: 304px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div></div>
    <div>
        <table align="center">
            <tr><td>
                
            <div align="center" class="auto-style2">
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <asp:Label ID="lblthank" runat="server" Text="Thank You" BorderColor="Black" BorderStyle="None" Font-Bold="True" Font-Size="50px" Width="269px" ForeColor="Navy" CssClass="auto-style3" Height="61px"></asp:Label><br />
                <asp:Label ID="lblvisit" runat="server" Text="For Visiting us" BorderColor="Black" BorderStyle="None" Font-Bold="True" Font-Size="25px" Width="181px" ForeColor="Navy" CssClass="auto-style3" Height="45px"></asp:Label>
                </div>
                </td></tr>
            <tr>
                <td align="center"><asp:Button ID="btnClickHere" runat="server" Text="Click Here To Download" CssClass="button" Font-Bold="True" Height="30px" Width="244px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight"  ForeColor="White" OnClick="btnClickHere_Click"/></td>
            </tr>
        </table>
    </div>
</asp:Content>
