<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="SeattingArrangmentPage.aspx.cs" Inherits="Web_Flight_Reservation_System.SeattingArrangmentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 4px;
        }
        .auto-style2 {
            height: 56px;
        }
        .auto-style4 {
            border: 1px solid #c4c4c4;
            padding: 2px 2px 2px 2px;
            border-radius: 4px;
            box-shadow: 0px 0px 8px #d9d9d9;
            background-color: azure;
            margin-bottom: 19px;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            height: 49px;
        }
        .auto-style8 {
            height: 47px;
        }
        .auto-style9 {
            height: 73px;
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
            if (confirm("Proceed To Pay")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No"
            }
            document.forms[0].appendChild(confirm_value);
        }

    </script>
    <div>
        <table align="center">
            <tr align="center">
                <td colspan="9" style="color: Navy">
                    <asp:Label ID="Label1" runat="server" Text="Seating Arrangment" BorderColor="Black" BorderStyle="None" Font-Bold="True" Font-Size="35px" Width="728px"></asp:Label>
                </td>
            </tr>
            <tr align="center" style="color:black">
                <td></td>
                <td></td>
                <td>A</td>
                <td>B</td>
                <td>C</td>
                <td></td>
                <td>D</td>
                <td>E</td>
                <td>F</td>


            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">1</td>
                <td>
                    <asp:Button ID="btn_1A" runat="server" Width="35px" Text="XL" ToolTip="1A Window Seat | RS 1299" OnClick="btn_1A_Click" /></td>
                <td>
                    <asp:Button ID="btn_1B" runat="server" Width="35px" Text="XL" ToolTip="1B Middle Seat | RS 1299" OnClick="btn_1B_Click" /></td>
                <td>
                    <asp:Button ID="btn_1C" runat="server" Width="35px" Text="XL" ToolTip="1C Aisle Seat | RS 1299" OnClick="btn_1C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_1D" runat="server" Width="35px" Text="XL" ToolTip="1D Aisle Seat | RS 1299" OnClick="btn_1D_Click" /></td>
                <td>
                    <asp:Button ID="btn_1E" runat="server" Width="35px" Text="XL" ToolTip="1E Middle Seat | RS 1299" OnClick="btn_1E_Click" /></td>
                <td>
                    <asp:Button ID="btn_1F" runat="server" Width="35px" Text="XL" ToolTip="1F Window Seat | RS 1299" OnClick="btn_1F_Click" /></td>

               
            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">2</td>
                <td>
                    <asp:Button ID="btn_2A" runat="server" Width="35px" ToolTip="2A Window Seat | RS 300" OnClick="btn_2A_Click" /></td>
                <td>
                    <asp:Button ID="btn_2B" runat="server" Width="35px" ToolTip="2B Middle Seat | RS 250" OnClick="btn_2B_Click" /></td>
                <td>
                    <asp:Button ID="btn_2C" runat="server" Width="35px" ToolTip="2C Aisle Seat | RS 300" OnClick="btn_2C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_2D" runat="server" Width="35px" ToolTip="2D Aisle Seat | RS 300" OnClick="btn_2D_Click" /></td>
                <td>
                    <asp:Button ID="btn_2E" runat="server" Width="35px" ToolTip="2E Middle Seat | RS 250" OnClick="btn_2E_Click" /></td>
                <td>
                    <asp:Button ID="btn_2F" runat="server" Width="35px" ToolTip="2F Window Seat | RS 300" OnClick="btn_2F_Click" /></td>
            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">3</td>
                <td>
                    <asp:Button ID="btn_3A" runat="server" Width="35px" ToolTip="3A Window Seat | RS 300" OnClick="btn_3A_Click" /></td>
                <td>
                    <asp:Button ID="btn_3B" runat="server" Width="35px" ToolTip="3B Middle Seat | RS 250" OnClick="btn_3B_Click" /></td>
                <td>
                    <asp:Button ID="btn_3C" runat="server" Width="35px" ToolTip="3C Aisle Seat | RS 300" OnClick="btn_3C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_3D" runat="server" Width="35px" ToolTip="3D Aisle Seat | RS 300" OnClick="btn_3D_Click" /></td>
                <td>
                    <asp:Button ID="btn_3E" runat="server" Width="35px" ToolTip="3E Middle Seat | RS 250" OnClick="btn_3E_Click" /></td>
                <td>
                    <asp:Button ID="btn_3F" runat="server" Width="35px" ToolTip="3F Window Seat | RS 300" OnClick="btn_3F_Click" /></td>
            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">4</td>
                <td>
                    <asp:Button ID="btn_4A" runat="server" Width="35px" ToolTip="4A Window Seat | RS 300" OnClick="btn_4A_Click" /></td>
                <td>
                    <asp:Button ID="btn_4B" runat="server" Width="35px" ToolTip="4B Middle Seat | RS 250" OnClick="btn_4B_Click" /></td>
                <td>
                    <asp:Button ID="btn_4C" runat="server" Width="35px" ToolTip="4C Aisle Seat | RS 300" OnClick="btn_4C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_4D" runat="server" Width="35px" ToolTip="4D Aisle Seat | RS 300" OnClick="btn_4D_Click" /></td>
                <td>
                    <asp:Button ID="btn_4E" runat="server" Width="35px" ToolTip="4E Middle Seat | RS 250" OnClick="btn_4E_Click" /></td>
                <td>
                    <asp:Button ID="btn_4F" runat="server" Width="35px" ToolTip="4F Window Seat | RS 300" OnClick="btn_4F_Click" /></td>
            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">5</td>
                <td>
                    <asp:Button ID="btn_5A" runat="server" Width="35px" Text="XL" ToolTip="5A Window Seat | RS 1299" OnClick="btn_5A_Click" /></td>
                <td>
                    <asp:Button ID="btn_5B" runat="server" Width="35px" Text="XL" ToolTip="5B Middle Seat | RS 1299" OnClick="btn_5B_Click" /></td>
                <td>
                    <asp:Button ID="btn_5C" runat="server" Width="35px" Text="XL" ToolTip="5C Aisle Seat | RS 1299" OnClick="btn_5C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_5D" runat="server" Width="35px" Text="XL" ToolTip="5D Aisle Seat | RS 1299" OnClick="btn_5D_Click" /></td>
                <td>
                    <asp:Button ID="btn_5E" runat="server" Width="35px" Text="XL" ToolTip="5E Middle Seat | RS 1299" OnClick="btn_5E_Click" /></td>
                <td>
                    <asp:Button ID="btn_5F" runat="server" Width="35px" Text="XL" ToolTip="5F Window Seat | RS 1299" OnClick="btn_5F_Click" /></td>
            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">6</td>
                <td>
                    <asp:Button ID="btn_6A" runat="server" Width="35px" Text="XL" ToolTip="6A Window Seat | RS 1299" OnClick="btn_6A_Click" /></td>
                <td>
                    <asp:Button ID="btn_6B" runat="server" Width="35px" Text="XL" ToolTip="6B Middle Seat | RS 1299" OnClick="btn_6B_Click" /></td>
                <td>
                    <asp:Button ID="btn_6C" runat="server" Width="35px" Text="XL" ToolTip="6C Aisle Seat | RS 1299" OnClick="btn_6C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_6D" runat="server" Width="35px" Text="XL" ToolTip="6D Aisle Seat | RS 1299" OnClick="btn_6D_Click" /></td>
                <td>
                    <asp:Button ID="btn_6E" runat="server" Width="35px" Text="XL" ToolTip="6E Middle Seat | RS 1299" OnClick="btn_6E_Click" /></td>
                <td>
                    <asp:Button ID="btn_6F" runat="server" Width="35px" Text="XL" ToolTip="6F Window Seat | RS 1299" OnClick="btn_6F_Click" /></td>
            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">7</td>
                <td>
                    <asp:Button ID="btn_7A" runat="server" Width="35px" ToolTip="7A Window Seat | RS 300" OnClick="btn_7A_Click" /></td>
                <td>
                    <asp:Button ID="btn_7B" runat="server" Width="35px" ToolTip="7B Middle Seat | RS 250" OnClick="btn_7B_Click" /></td>
                <td>
                    <asp:Button ID="btn_7C" runat="server" Width="35px" ToolTip="7C Aisle Seat | RS 300" OnClick="btn_7C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_7D" runat="server" Width="35px" ToolTip="7D Aisle Seat | RS 300" OnClick="btn_7D_Click" /></td>
                <td>
                    <asp:Button ID="btn_7E" runat="server" Width="35px" ToolTip="7E Middle Seat | RS 250" OnClick="btn_7E_Click" /></td>
                <td>
                    <asp:Button ID="btn_7F" runat="server" Width="35px" ToolTip="7F Window Seat | RS 300" OnClick="btn_7F_Click" /></td>
            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">8</td>
                <td>
                    <asp:Button ID="btn_8A" runat="server" Width="35px" ToolTip="8A Window Seat | RS 300" OnClick="btn_8A_Click" /></td>
                <td>
                    <asp:Button ID="btn_8B" runat="server" Width="35px" ToolTip="8B Middle Seat | RS 250" OnClick="btn_8B_Click" /></td>
                <td>
                    <asp:Button ID="btn_8C" runat="server" Width="35px" ToolTip="8C Aisle Seat | RS 300" OnClick="btn_8C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_8D" runat="server" Width="35px" ToolTip="8D Aisle Seat | RS 300" OnClick="btn_8D_Click" /></td>
                <td>
                    <asp:Button ID="btn_8E" runat="server" Width="35px" ToolTip="8E Middle Seat | RS 250" OnClick="btn_8E_Click" /></td>
                <td>
                    <asp:Button ID="btn_8F" runat="server" Width="35px" ToolTip="8F Window Seat | RS 300" OnClick="btn_8F_Click" /></td>
            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">9</td>
                <td>
                    <asp:Button ID="btn_9A" runat="server" Width="35px" ToolTip="9A Window Seat | RS 300" OnClick="btn_9A_Click" /></td>
                <td>
                    <asp:Button ID="btn_9B" runat="server" Width="35px" ToolTip="9B Middle Seat | RS 250" OnClick="btn_9B_Click" /></td>
                <td>
                    <asp:Button ID="btn_9C" runat="server" Width="35px" ToolTip="9C Aisle Seat | RS 300" OnClick="btn_9C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_9D" runat="server" Width="35px" ToolTip="9D Aisle Seat | RS 300" OnClick="btn_9D_Click" /></td>
                <td>
                    <asp:Button ID="btn_9E" runat="server" Width="35px" ToolTip="9E Middle Seat | RS 250" OnClick="btn_9E_Click" /></td>
                <td>
                    <asp:Button ID="btn_9F" runat="server" Width="35px" ToolTip="9F Window Seat | RS 300" OnClick="btn_9F_Click" /></td>
            </tr>
            <tr align="center">
                <td></td>
                <td style="color: Black">10</td>
                <td>
                    <asp:Button ID="btn_10A" runat="server" Width="35px" ToolTip="10A Window Seat | RS 300" OnClick="btn_10A_Click" /></td>
                <td>
                    <asp:Button ID="btn_10B" runat="server" Width="35px" ToolTip="10B Middle Seat | RS 250" OnClick="btn_10B_Click" /></td>
                <td>
                    <asp:Button ID="btn_10C" runat="server" Width="35px" ToolTip="10C Aisle Seat | RS 300" OnClick="btn_10C_Click" /></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_10D" runat="server" Width="35px" ToolTip="10D Aisle Seat | RS 300" OnClick="btn_10D_Click" /></td>
                <td>
                    <asp:Button ID="btn_10E" runat="server" Width="35px" ToolTip="10E Middle Seat | RS 250" OnClick="btn_10E_Click" /></td>
                <td>
                    <asp:Button ID="btn_10F" runat="server" Width="35px" ToolTip="10F Window Seat | RS 300" OnClick="btn_10F_Click" /></td>

            </tr>
            
        </table>
        <div>
                <table align="center">
                    <tr>
                        <td>
                            <asp:Label ID="lblSelectedSeat" runat="server" Text="Selected Seat" Font-Bold="true" ForeColor="Black" Font-Size="Medium"></asp:Label>
                         </td>
                         <td>
                            <asp:TextBox ID="txt_color" runat="server" CssClass="auto_style24" Width="25px" Height="15px"></asp:TextBox>
                        </td>
                        </tr>
                </table>
            </div>
    </div>
    <div class="auto-style2"></div>
    <div>
        <hr />
    </div>
    <table align="center">
        <tr>
            <td align="center" class="auto-style6">
                <asp:Label ID="lblPriceSummery" runat="server" Text="Price Summary" Font-Bold="true" ForeColor="Navy" Font-Size="30px"></asp:Label>
            </td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblbaseprice" runat="server" Text="Base Price" Font-Bold="true" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_base_price" runat="server" CssClass="Txtstyle4"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblSeat" runat="server" Text="Seat Price" Font-Bold="true" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_seat_price" runat="server" CssClass="auto-style4"></asp:TextBox></td>
        </tr>
        <tr>

            <td class="auto-style8">
                <asp:Label ID="lblTotal" runat="server" Text="Total Price" Font-Bold="true" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_total_price" runat="server" CssClass="Txtstyle4"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="3" class="auto-style9">
                <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" OnClientClick="Confirm()" CssClass="button" Font-Bold="True" Height="30px" Width="80px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight" ForeColor="White" /></td>
        </tr>
    </table>
</asp:Content>
