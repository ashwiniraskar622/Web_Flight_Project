<%@ Page Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="NetBankingPage.aspx.cs" Inherits="Web_Flight_Reservation_System.NetBankingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style2 {
            width: 93%;
        }
        .auto-style3 {
            width: 20%;
        }
        .auto-style6 {
            width: 75%;
        }
        .auto-style7 {
            width: 253px;
        }
        .auto-style8 {
            width: 270px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/Button.css" rel="stylesheet" />
    <link href="CSS/Textbox.css" rel="stylesheet" />
    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Payment Done Successfully")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No"
            }
            document.forms[0].appendChild(confirm_value);
        }

    </script>
    <h2 align="center" style="color:navy">Payment Details</h2>

    <div align="center">
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3" align="left">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Credit/Debit/ATM Card" GroupName="Payment_Options" AutoPostBack="true" OnCheckedChanged="RadioButton1_CheckedChanged" Checked="false" Font-Bold="true" /><br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Net Banking" GroupName="Payment_Options" AutoPostBack="true" OnCheckedChanged="RadioButton2_CheckedChanged" Checked="true" Font-Bold="true" /><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="UPI Option" GroupName="Payment_Options" AutoPostBack="true" OnCheckedChanged="RadioButton3_CheckedChanged" Checked="false" Font-Bold="true" />
                </td>
                <td class="auto-style8">
                    <table id="tbl_netbanking" align="center">
                        <tr>
                            <td></td>
                            <td class="auto-style1">
                                <asp:RadioButtonList ID="bank_list" runat="server">
                                    <asp:ListItem>Axis Bank</asp:ListItem>
                                    <asp:ListItem>HDFC Bank</asp:ListItem>
                                    <asp:ListItem>ICICII Bank</asp:ListItem>
                                    <asp:ListItem>State Of India</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="auto-style1" align="center"><asp:Button ID="btn_pay" runat="server"  Text="Pay Now" OnClick="btn_pay_Click" OnClientClick="Confirm()" CssClass="button" Font-Bold="True" Height="30px" Width="97px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight"  ForeColor="White"/></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="auto-style6" align="center">
                        <tr>
                            <td class="auto-style7"><h4>Your Booking</h4></td>
                        </tr>
                        <tr><td class="auto-style7"></td></tr>
                        <tr>
                            <td class="auto-style7"><label>Source Location</label></td>
                            <td><asp:TextBox ID="txtSourceLocation" runat="server" ReadOnly="true" CssClass="Txtstyle4"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><label>Destination Location</label></td>
                            <td><asp:TextBox ID="txtDestLocation" runat="server" ReadOnly="true" CssClass="Txtstyle4"></asp:TextBox></td>
                        </tr>
                        <tr><td class="auto-style7"></td></tr>
                        <tr>
                            <td class="auto-style7"><h4>Payment Summery</h4></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style7"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Total Price</td>
                            <td><asp:TextBox ID="txt_price" runat="server" CssClass="Txtstyle4" ReadOnly="true"></asp:TextBox></td>
                        </tr>
                    </table>
                </td>
                <tr align="center">
                    <td colspan="3">&nbsp;</td>
                </tr> 
                </table>
             </div>
</asp:Content>
