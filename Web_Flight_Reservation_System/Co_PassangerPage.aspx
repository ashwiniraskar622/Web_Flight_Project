<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Co_PassangerPage.aspx.cs" Inherits="Web_Flight_Reservation_System.Co_PassangerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Button.css" rel="stylesheet" />
    <link href="CSS/Gridview.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            width: 980px;
        }
        .auto-style4 {
            width: 268434784px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="auto-style3" align="center">
        <tr>
            <td align="center" class="auto-style4">
                        <asp:Label ID="lblCookie" runat="server" Text="lblCookie" Visible="False"></asp:Label>
                        <asp:Label ID="lblSessionlable" runat="server" Text="LblSess" Visible="False"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text="Add Co-Passenger Details" BorderColor="Black" BorderStyle="None" Font-Bold="True" Font-Size="35Px" Width="628px" ForeColor="Navy"></asp:Label>
            </td>
         </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>
                 <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="myGridStyle" HeaderStyle-BackColor="Aqua" align="center">
                     <Columns>
                <asp:TemplateField HeaderText=" First Name">
                    <ItemTemplate>
                        <asp:Label ID="LblFirtName" runat="server" Text='<%# Bind("co_first_name") %>'></asp:Label> 
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtFN" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText=" Last Name">
                    <ItemTemplate>
                        <asp:Label ID="lblLastName" runat="server" Text='<%# Bind("co_last_name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtLN" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>

                    <asp:TemplateField HeaderText="Age">
                    <ItemTemplate>
                        <asp:Label ID="lblAge" runat="server" Text='<%# Bind("co_p_age") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtA" runat="server"/>
                    </FooterTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="lblAge" runat="server" Text='<%# Bind("co_p_gender") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                            <asp:DropDownList ID="ddl_gender" runat="server" Width="150px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Transgender</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                     </asp:TemplateField>   
                         <%--<asp:TemplateField HeaderText="Passenger_id">
                        <ItemTemplate>
                            <%# Eval("passenger_id") %>
                            <%--<asp:TextBox ID="txtPassengerID" runat="server" ReadOnly="true"></asp:TextBox>--%>
                        <%--</ItemTemplate>
                    </asp:TemplateField>--%>
                         <asp:TemplateField>
                    <ItemTemplate>
                    </ItemTemplate>
                    <FooterTemplate>
                        
                        <asp:Button ID="btnINsert" runat="server" Text="Insert"  CommandName="Footer" OnClick="btnINsert_Click" />
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
                      </asp:GridView>
            </td>
        </tr>
        <tr align="center">
            <td><asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" CssClass="button" Font-Bold="True" Height="30px" Width="80px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight"  ForeColor="White" /></td>
        </tr>
        </table>
    </div>
</asp:Content>
