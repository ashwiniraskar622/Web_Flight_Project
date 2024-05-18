<%@ Page Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="FlightPage.aspx.cs" Inherits="Web_Flight_Reservation_System.FlightPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Gridview.css" rel="stylesheet" />
    <link href="CSS/Button.css" rel="stylesheet" />
    <link href="CSS/Textbox.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 56px;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style7 {
            height: 26px;
            width: 150px;
        }
        .auto-style8 {
            width: 965px;
        }
        .auto-style13 {
            width: 20px;
            height: 26px;
        }
        .auto-style14 {
            height: 56px;
            width: 20px;
        }
        .auto-style17 {
            width: 20px;
            height: 14px;
        }
        .auto-style20 {
            height: 14px;
            width: 150px;
        }
        .auto-style27 {
            width: 19px;
            height: 26px;
        }
        .auto-style28 {
            width: 19px;
            height: 14px;
        }
        .auto-style29 {
            height: 56px;
            width: 19px;
        }
        .auto-style30 {
            width: 18px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do You Want To Redirect")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No"
            }
            document.forms[0].appendChild(confirm_value);
        }

    </script>
    <div><table align="center"><tr><td class="auto-style27" style="text-align:center;">
                        &nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Flight Details" BorderColor="Highlight" BorderStyle="None" Font-Bold="True" Font-Size="35px" ForeColor="Navy" Width="958px"></asp:Label>
                    </td></tr></table></div>
        <div>
            <table class="auto-style8" align="center">
                <tr>
                    <td style="text-align:center;" class="auto-style13">
                       
                        &nbsp;</td>
                    
                    <td class="auto-style27"style="text-align:left;">
                        </td>
                    <td class="auto-style7">
                        </td>
                </tr>
                <tr>
                    <td style="text-align:center;" class="auto-style17">
                        <asp:Label ID="Label1" runat="server" Text="Departual_Location" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                        </td>
                    <td class="auto-style28" align=left Font-Bold="true">
                        <asp:Label ID="Label2" runat="server" Text="Arrival_Location" style="text-align:center" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>

                    </td>
                    <td class="auto-style28"style="text-align:left;">
                        <asp:Label ID="Label3" runat="server" Text="Departual Date"  Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                    </td>
                    <%--<td class="auto-style25">
                        <asp:Label ID="Label5" runat="server" Text="Arrival Date"></asp:Label>
                    </td>--%>
                    <td class="auto-style20">
                        <asp:Label ID="Label4" runat="server" Text="Airline" align="center"  Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style14" style="text-align:center;">
                        <asp:DropDownList ID="DDlocationDepartual" runat="server" AutoPostBack="True" CssClass="Txtstyle4" >
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style29" style="text-align:left;">
                        <asp:DropDownList ID="DDlocationArrival" runat="server" AutoPostBack="True" CssClass="Txtstyle4" >
                        </asp:DropDownList>
               
                    </td>
                    <td class="auto-style29" style="text-align:left;">
                        <asp:TextBox ID="txtDepartualDateTime" runat="server" Width="103px" TextMode="Date" CssClass="Txtstyle4"></asp:TextBox>
                       </td> 
                    <td class="auto-style2" style="text-align:left;">
                        
                        <asp:CheckBoxList ID="cbl_AirlineDetails" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="airline_name" DataValueField="airline_name" Width="98px" CssClass="Txtstyle4">
                        </asp:CheckBoxList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Flight_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Airline_Details]"></asp:SqlDataSource>
                    </td>

                    </tr> 
                    <%--<td class="auto-style40">
                        <asp:TextBox ID="txtArrivalDateTime" runat="server" Width="103px" TextMode="Date"></asp:TextBox>
                    </td>--%>
                    
                    <tr>
                    <td class="auto-style30" colspan="4" align="center">
                        <asp:GridView ID="gv_FlightDetails" runat="server" Width="683px" DataKeyNames="flight_id" OnRowCommand="gridview_Rowcommand_View_Details" OnSelectedIndexChanged="gv_FlightDetails_SelectedIndexChanged" OnRowDataBound="ShowRowDataBound" CssClass="myGridStyle" HeaderStyle-BackColor="Aqua" align="center">
                            <Columns>
                                <asp:ButtonField ButtonType="Button" Commandname="View_Details" Text="View Details"  ControlStyle-CssClass="button" ControlStyle-Font-Bold="true" ControlStyle-BorderColor="Highlight" ControlStyle-BackColor="Highlight" ControlStyle-ForeColor="White"/> 
                     
                            </Columns>
                            
                        </asp:GridView>
                        
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style1" colspan="4" >
                        <asp:Button ID="btnSearch" runat="server" align="center" Text="Submit" OnClick="btnSearch_Click" CssClass="button" Font-Bold="True" Height="30px" Width="80px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight"  ForeColor="White"/>
                        
                    </td>
                </tr>
                
                </table>
        </div>
    </asp:Content>
