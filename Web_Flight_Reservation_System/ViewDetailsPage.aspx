<%@ Page Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ViewDetailsPage.aspx.cs" Inherits="Web_Flight_Reservation_System.ViewDetailsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Button.css" rel="stylesheet" />
    <link href="CSS/Textbox.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            width: 691px;
        }
        .auto-style4 {
            width: 213px;
        }
        .auto-style5 {
            width: 301px;
        }
        .auto-style12 {
            width: 301px;
            height: 39px;
        }
        .auto-style14 {
            width: 301px;
            height: 40px;
        }
        .auto-style15 {
            width: 213px;
            height: 40px;
        }
        .auto-style20 {
            width: 301px;
            height: 88px;
        }
        .auto-style26 {
            width: 301px;
            height: 14px;
        }
        .auto-style27 {
            width: 213px;
            height: 14px;
        }
        .auto-style28 {
            width: 301px;
            height: 15px;
        }
        .auto-style29 {
            width: 301px;
            height: 57px;
        }
        .auto-style30 {
            width: 213px;
            height: 57px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/Gridview.css" rel="stylesheet" />
    <script type="text/javascript">
    function Confirm()
    {
        var confirm_value = document.createElement("INPUT");
        confirm_value.type = "hidden";
        confirm_value.name = "confirm_value";
        if (confirm("You Need To Add Your Co_Passenger Details")) {
            confirm_value.value = "Yes";
        } else
        {
            confirm_value.value = "No"
        }
        document.forms[0].appendChild(confirm_value);
    }

    </script>
    <div>
        </div>
            <table class="auto-style3" align="center" >
                <tr align="center">
                    <td align="center" class="auto-style20" colspan="3">
                        <asp:Label ID="Label1" runat="server" Text="Flight Details" BorderColor="Highlight" BorderStyle="None" Font-Bold="True" Font-Size="33px" ForeColor="Navy" align="center"></asp:Label>
                        
                        <asp:Label ID="SessionLable" runat="server" Text="Label" Visible="False"></asp:Label>
                        
                    </td>
                    
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style26">
                        <asp:Label ID="lblDepartuarloc" runat="server" Text="Departure Location" Font-Bold="True" ForeColor="Black" ></asp:Label>
                    </td>
                    <td align="center" class="auto-style26" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblArrivalloc" runat="server" Text="Arrival Location" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style12">
                        <asp:TextBox ID="txtDeparture_loc" runat="server" ReadOnly="True" CssClass="Txtstyle4"></asp:TextBox>
                    </td>
                    <td align="center" class="auto-style12" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_Arrival_loc" runat="server" ReadOnly="True" CssClass="Txtstyle4"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style26">
                        <asp:Label ID="lblDeparturedate" runat="server" Text="Departure Date" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                    <td align="center" class="auto-style26" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblArrivaldate" runat="server" Text="Arrival Date" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style12">
                        <asp:TextBox ID="txt_Departual_Date" runat="server" ReadOnly="True" CssClass="Txtstyle4"></asp:TextBox>
                    </td>
                    <td align="center" class="auto-style12" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_Arrival_Date" runat="server" ReadOnly="True" CssClass="Txtstyle4"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style28">
                        <asp:Label ID="lblClass" runat="server" Text="Class" Font-Bold="True" ForeColor="Black"></asp:Label>
                   
                    </td>
                    <td align="center" class="auto-style28" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblNoOfPass" runat="server" Text="No. Of.Passengers" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style14">
                        <asp:DropDownList ID="ddl_class" runat="server" AutoPostBack="True" CssClass="Txtstyle4">
                            <asp:ListItem>Econimics</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;</td>
                    <td align="center" class="auto-style14" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddl_no_of_passengers" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_no_of_passengers_SelectedIndexChanged" CssClass="Txtstyle4">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td align="center" class="auto-style29">
                        <asp:Label ID="Label5" runat="server" Text="Price Details" BorderColor="Black" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" ForeColor="Navy"></asp:Label>
                    </td>
                    <td align="center"class="auto-style30"></td>
                </tr>
                <tr>
                    <td align="center" class="auto-style26">
                        <asp:Label ID="lblTicketfare" runat="server" Text="Ticket Fare" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                    <td align="center" class="auto-style26">
                        <asp:Label ID="lblTax" runat="server" Text="Tax" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                    <td align="center" class="auto-style27">
                        <asp:Label ID="lblTotalfare" runat="server" Text="Total Fare" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style14">
                        <asp:TextBox ID="txtTicketfare" runat="server" ReadOnly="True" CssClass="Txtstyle4"></asp:TextBox>
                    </td>
                    <td align="center" class="auto-style14">
                        <asp:TextBox ID="txtTax" runat="server" ReadOnly="True" CssClass="Txtstyle4"></asp:TextBox>
                    </td>
                    <td align="center" class="auto-style15">
                        <asp:TextBox ID="txtTotalfare" runat="server" ReadOnly="True" CssClass="Txtstyle4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="Left" class="auto-style5">
                        </td>
                    <td align="center" class="auto-style5">
                        </td>
                    <td align="center" class="auto-style4">
                        </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style5">
                        </td>
                    <td align="center" class="auto-style5">
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" align="left" Width="100px" OnClick="btnEdit_Click" CssClass="button" Font-Bold="True" Height="30px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight" ForeColor="White" />
                        <asp:Button ID="btnnext" runat="server" Text="Next" align="Right" Width="100px" OnClick="btnnext_Click" OnClientClick="Confirm()" CssClass="button" Font-Bold="True" Height="30px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight" ForeColor="White"/>
                    </td>
                    <td align="center" class="auto-style4">
                        </td>
                </tr>
            </table>
   
</asp:Content>