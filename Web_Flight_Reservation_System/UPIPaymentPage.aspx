<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UPIPaymentPage.aspx.cs" Inherits="Web_Flight_Reservation_System.UPIPaymentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Button.css" rel="stylesheet" />
    <link href="CSS/Textbox.css" rel="stylesheet" />
    <script type="text/javascript">
    function Confirm()
    {
        var confirm_value = document.createElement("INPUT");
        confirm_value.type = "hidden";
        confirm_value.name = "confirm_value";
        if (confirm(" Payment Done Successfully")) {
            confirm_value.value = "Yes";
        } else
        {
            confirm_value.value = "No"
        }
        document.forms[0].appendChild(confirm_value);
    }

    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 264px;
        }
        .auto-style3 {
            width: 572px;
        }
        .auto-style8 {
            width: 440px;
        }
        .auto-style9 {
            width: 81px;
            height: 67px;
        }
        .auto-style10 {
            width: 203px;
            height: 136px;
        }
        .auto-style11 {
            width: 409px;
            height: 136px;
        }
        .auto-style12 {
            height: 183px;
            width: 495px;
        }
        .auto-style13 {
            width: 338px;
        }
        .auto-style14 {
            width: 92%;
            height: 46px;
        }
        .auto-style15 {
            width: 171px;
        }
        .auto-style16 {
            width: 233px;
        }
        .auto-style17 {
            border: 1px solid #c4c4c4;
            padding: 2px 2px 2px 2px;
            border-radius: 4px;
            box-shadow: 0px 0px 8px #d9d9d9;
            background-color: azure;
            margin-left: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 align="center" style="color: navy">Payment Details</h2>
    <div></div>
    <div align="center">
        <table class="auto-style14" align="center">
            <tr>
                <td class="auto-style16" align="left">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Credit/Debit/ATM Card" GroupName="payment_option" AutoPostBack="true" OnCheckedChanged="RadioButton1_CheckedChanged" Checked="false" Font-Bold="true"/><br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Net Banking" GroupName="payment_option" AutoPostBack="true" OnCheckedChanged="RadioButton2_CheckedChanged" Checked="false" Font-Bold="true"/><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="UPI Option" GroupName="payment_option" AutoPostBack="true" OnCheckedChanged="RadioButton3_CheckedChanged" Checked="true" Font-Bold="true" />
                </td>
                <td class="auto-style3">
                    <table class="auto-style12" align="center">
                           <tr>
                               <td align="center"><asp:Label ID="lblScan" runat="server" Text="Scan AND Pay" Font-Bold="true"></asp:Label></td>
                               <td><asp:Label ID="lblUPI" runat="server" Text="Enter UPI ID" Font-Bold="true"></asp:Label>
                                   <asp:TextBox ID="txtUPTID" runat="server" CssClass="auto-style17"></asp:TextBox>
                               </td>
                           </tr>
                        <tr>
                            <td class="auto-style10" align="center"><img src="Images/QR_Code_image.jpg" class="auto-style9"/>
                               <%-- <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/96135-airplane-landing-sky.jpg" Height="617px" Width="1436px"/>--%>
                            </td>
                            <td class="auto-style11">
                               <asp:Button  ID="btn_pay" Text="Pay Now" runat="server" align="Center" OnClick="btn_pay_Click" OnClientClick="Confirm()" CssClass="button" Font-Bold="True" Height="30px" Width="100px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight"  ForeColor="White" />
                                <label><br /><br />*Enter Your Resister VPA <br /> *Receive Payment Request On Bank App<br />*Authorize Payment Request</label>
                            </td>
                        </tr>
                    </table>
               </td>
                <td class="auto-style13">
                    <table class="auto-style8" align="center">
                        <tr>
                            <td class="auto-style15"><h4>Your Booking </h4></td>
                        </tr>
                        <tr><td class="auto-style15"></td></tr>
                        <tr>
                           <td class="auto-style15"><label>Source Location</label></td>
                            <td><asp:TextBox ID="txtSourceLocation" runat="server" ReadOnly="true" CssClass="Txtstyle4"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style15"><label>Destination Location</label></td>
                            <td><asp:TextBox ID="txtDestLocation" runat="server" ReadOnly="true" CssClass="Txtstyle4"></asp:TextBox></td>
                        </tr>
                        <tr><td class="auto-style15"></td></tr>
                        <tr>
                            <td class="auto-style15"><h4>Payment Summery</h4></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style15"></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style15">Total Price</td>
                            <td><asp:TextBox ID="txt_price" runat="server" CssClass="Txtstyle4"></asp:TextBox></td>
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
