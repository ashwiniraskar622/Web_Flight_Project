<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.Master" CodeBehind="PaymentPage.aspx.cs" Inherits="Web_Flight_Reservation_System.PaymentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 91%;
            margin-right: 17px;
        }
        .auto-style3 {
            width: 301px;
        }
        .auto-style4 {
            width: 244%;
        }
        .auto-style5 {
            width: 226px;
        }
        .auto-style6 {
            height: 27px;
        }
        .auto-style7 {
            width: 236px;
        }
        .auto-style8 {
            width: 164px;
        }
        .auto-style9 {
            height: 27px;
            width: 164px;
        }
        .auto-style10 {
            width: 103%;
            margin-left: 57px;
        }
        .auto-style11 {
            height: 29px;
        }
        .auto-style12 {
            width: 301px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/Button.css" rel="stylesheet" />
    <link href="CSS/Textbox.css" rel="stylesheet" />
    <script type="text/javascript">
    function Confirm()
    {
        var confirm_value = document.createElement("INPUT");
        confirm_value.type = "hidden";
        confirm_value.name = "confirm_value";
        if (confirm("Payment Done Successfully")) {
            confirm_value.value = "Yes";
        } else
        {
            confirm_value.value = "No"
        }
        document.forms[0].appendChild(confirm_value);
    }

    </script>
<h2 align="center" style="color: navy">Payment Details</h2>
<div></div>
    <div align="center">
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style7" align="left">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Credit/Debit/ATM Card" GroupName="Payment_Options" AutoPostBack="true" OnCheckedChanged="RadioButton1_CheckedChanged" Checked="true" Font-Bold="true"/><br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Net Banking" GroupName="Payment_Options" AutoPostBack="true" OnCheckedChanged="RadioButton2_CheckedChanged" Checked="false" Font-Bold="true" /><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="UPI Option" GroupName="Payment_Options" AutoPostBack="true" OnCheckedChanged="RadioButton3_CheckedChanged" Checked="false" Font-Bold="true" />
                </td>
                <td class="auto-style5">
                    <table id="tbl_card" class="auto-style4"align="center" >
                        <tr>
                            <td></td>
                            <td class="auto-style3"><label style="font-style:normal">Card Number</label></td>
                        </tr>
                        <tr>
                            <td class="auto-style11"></td>
                            <td class="auto-style12"><asp:TextBox ID="txtCardNo"  runat="server" Width="300px" CssClass="Txtstyle4"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="auto-style3"><label>Name Of Card</label></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="auto-style3"><asp:TextBox ID="txtCardName" runat="server" Width="300px" CssClass="Txtstyle4"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="auto-style3"><label>Expiry Month & Year</label></td>
                            <td><label>Card CVV</label></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="auto-style3"><asp:TextBox ID="txtCardMonth" TextMode="Month" runat="server" Width="300px" CssClass="Txtstyle4"></asp:TextBox></td>
                            <td><asp:TextBox ID="txtCVV" runat="server" CssClass="Txtstyle4"></asp:TextBox></td>
                        </tr>
                        <tr><td></td></tr>
                        <tr><td></td><td align="center" class="auto-style3"><asp:Button ID="btn_Pay" runat="server" Text="Pay Now" OnClick="btn_Pay_Click" OnClientClick="Confirm()" CssClass="button" Font-Bold="True" Height="30px" Width="99px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight"  ForeColor="White"/></td></tr>
                        
                    </table>


                </td>
                <td>
                    <table align="center" class="auto-style10">
                        <tr>
                            <td class="auto-style8"><h4>Your Booking</h4></td>
                        </tr>
                        <tr><td class="auto-style8"></td></tr>
                        <tr>
                            <td class="auto-style8"><label>Source Location</label></td>
                            <td><asp:TextBox ID="txtSourceLocation" runat="server" ReadOnly="true" CssClass="Txtstyle4"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style8"><label>Destination Location</label></td>
                            <td><asp:TextBox ID="txtDestLocation" runat="server" ReadOnly="true" CssClass="Txtstyle4"></asp:TextBox></td>
                        </tr>
                        <tr><td class="auto-style8"></td></tr>
                        <tr>
                            <td class="auto-style9"><h4>Payment Summery</h4></td>
                            <td class="auto-style6"></td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style8"></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style8">Total Price</td>
                            <td><asp:TextBox ID="txt_price" runat="server" CssClass="Txtstyle4" ReadOnly="True"></asp:TextBox></td>
                            <td></td>
                        </tr>
                    </table>
                </td>
            </tr>
           <tr align="center">
                <td colspan="3">&nbsp;</td>
            </tr> 
        </table>
    </div>
</asp:Content>
