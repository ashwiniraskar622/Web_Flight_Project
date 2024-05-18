<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.Master" CodeBehind="LoginPage.aspx.cs" Inherits="Web_Flight_Reservation_System.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="CSS/Button.css" rel="stylesheet" />
     <link href="CSS/Textbox.css" rel="stylesheet" />
     <style type="text/css">
         .auto-style2 {
             height: 35px;
         }
         .auto-style3 {
             height: 28px;
         }
         .auto-style4 {
             height: 30px;
             margin-left: 3px;
             margin-top: 0px;
             margin-bottom: 0px;
         }
         .auto-style5 {
             height: 32px;
         }
         .auto-style6 {
             margin-left: 0px;
         }
         .auto-style7 {
             height: 41px;
         }
         .auto-style8 {
             height: 44px;
         }
         .auto-style9 {
             height: 54px;
         }
     </style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style8"></div>
        <div style="margin:auto; text-align:center" class="auto-style9" >
           <h2 style="color:Navy";size="35px" class="auto-style4">LOGIN</h2> 
        </div>
        <div style="margin:auto; text-align:center" class="auto-style7">
            <asp:Label ID="lblUsername" runat="server" Text="Username:" ForeColor="black" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txt_username" runat="server" CssClass="Txtstyle4"></asp:TextBox><br />
            
        </div>


        <div style="margin:auto; text-align:center" class="auto-style2" >
            <asp:Label ID="lbl_password" runat="server" Text="Password:" ForeColor="Black" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txt_password" runat="server" CssClass="Txtstyle4" TextMode="Password"></asp:TextBox><br />

        </div>

        
        <div style="margin:auto; text-align:center" class="auto-style5">
            <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" style="height: 29px" CssClass="button" Font-Bold="True" Height="30px" Width="80px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight"  ForeColor="White" />
            
        </div>
    <div align="center" class="auto-style3">
        <tr>
            <td><asp:Label ID="lblresister" runat="server" Text="Don't Have an Account? " Font-Size="Small"></asp:Label>
            <asp:LinkButton ID="linkresister" runat="server" Text="Register now" CssClass="auto-style6" OnClick="linkresister_Click" Width="108px"></asp:LinkButton>
            </td>
        </tr>
    </div>
   
</asp:Content>