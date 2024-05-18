<%@ Page Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="SignupPage.aspx.cs" Inherits="Web_Flight_Reservation_System.SignupPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Button.css" rel="stylesheet" />
    <link href="CSS/Textbox.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            height: 40px;
        }
        .auto-style3 {
            height: 40px;
            width: 231px;
        }
        .auto-style5 {
            height: 40px;
            width: 230px;
        }
        .auto-style7 {
            width: 130px;
            height: 33px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script type="text/javascript">
    function Confirm()
    {
        var confirm_value = document.createElement("INPUT");
        confirm_value.type = "hidden";
        confirm_value.name = "confirm_value";
        if (confirm("SignUp Successfully"))
        {
            confirm_value.value = "Yes";
        } else
        {
            confirm_value.value = "No"
        }
        document.forms[0].appendChild(confirm_value);
    }

     </script>

        
        <table style="align-items:center" class="auto-style24" align="center">
            <tr>
                <td colspan="6" style="color: navy; font-size:35px" ><h4 class="auto-style23" align="center" colspan="6">Personal Details</h4></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblFirst" runat="server" Text="First Name" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
               <td class="auto-style3"><asp:TextBox ID="txt_firstname" runat="server" CssClass="Txtstyle4" ></asp:TextBox>
                    <br />
                  <asp:RequiredFieldValidator ID="REV_FN" runat="server" ControlToValidate="txt_firstname" ErrorMessage=" Please Enter First Name" ForeColor="Red" Font-Size="X-Small"></asp:RequiredFieldValidator></td>
                <td><asp:Label ID="lblLast" runat="server" Text="Last Name" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td class="auto-style5"><asp:TextBox ID="txt_Lastname" runat="server" CssClass="Txtstyle4" ></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="REV_LN" runat="server" ControlToValidate="txt_Lastname" ErrorMessage=" Please Enter Last Name" ForeColor="Red" Font-Size="X-Small"></asp:RequiredFieldValidator></td>
                <td><asp:Label ID="lblAge" runat="server" Text="Age" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td><asp:TextBox ID="txt_Age" runat="server" CssClass="Txtstyle4"></asp:TextBox><br />
                <asp:RangeValidator ID="Rang_Val_Agr" runat="server" ControlToValidate="txt_Age" ErrorMessage="Enter Valid Ege" ForeColor="Red" MaximumValue="100" MinimumValue="5" SetFocusOnError="True" Type="Integer" Font-Size="X-Small"></asp:RangeValidator>

                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblNationality" runat="server" Text="Nationality" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_nationality" runat="server" CssClass="Txtstyle4"></asp:TextBox> <br />
                    <asp:RequiredFieldValidator ID="RKV_N" runat="server" ControlToValidate="txt_nationality" ErrorMessage="Please Enter Nationality" ForeColor="Red" Font-Size="X-Small"></asp:RequiredFieldValidator></td>
                
                <td><asp:Label ID="lblGender" runat="server" Text="Gender" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td class="auto-style5"><asp:DropDownList ID="ddl_gender" runat="server" CssClass="Txtstyle4">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                    </asp:DropDownList><br />
                 <asp:RequiredFieldValidator ID="RKV_gender" runat="server" ControlToValidate="ddl_gender" ErrorMessage=" Please Select Gender" ForeColor="Red" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td><asp:Label ID="lblDOB" runat="server" Text="Date Of Birth" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_dateofbirth" runat="server" TextMode="Date" CssClass="Txtstyle4"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RKV_dateofBirth" runat="server" ControlToValidate="txt_dateofbirth" ErrorMessage=" Please Enter BirthDate" ForeColor="Red" Font-Size="X-Small"></asp:RequiredFieldValidator>

            </tr>
            <tr>
                <td><asp:Label ID="lblPhono" runat="server" Text="Phone Number" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_phoneNumber" runat="server" Width="163px" Height="20px" CssClass="Txtstyle4"></asp:TextBox><br />
                       <asp:RegularExpressionValidator ID="Reg_expre_vali_phoneNo" runat="server" ErrorMessage="Enter Valid Phone Number" Font-Size="X-Small" ForeColor="Red" ValidationExpression="^([0-9])+$" ControlToValidate="txt_phoneNumber"></asp:RegularExpressionValidator>

                </td>
                <td><asp:Label ID="lblEmail" runat="server" Text="Email ID" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_emil_address" runat="server" CssClass="Txtstyle4"></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="Reg_Exp_Email" runat="server" ErrorMessage="Enter Valid Email_ID" Font-Size="X-Small" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$" ControlToValidate="txt_emil_address"></asp:RegularExpressionValidator>
                                        </td>
                <td><asp:Label ID="lblPassport" runat="server" Text="Passport Number" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td><asp:TextBox ID="txt_Number" runat="server" CssClass="Txtstyle4"></asp:TextBox><br />
                    <asp:RangeValidator ID="rang_Passno" runat="server" ControlToValidate="txt_Number" ErrorMessage="Enter Valid Passport Number" Font-Size="X-Small" ForeColor="Red" MaximumValue="900000" MinimumValue="10" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblUserNmae" runat="server" Text="UserName" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td class="auto-style3"><asp:TextBox ID="txt_username"  runat="server" CssClass="Txtstyle4"></asp:TextBox> <br />
                        <asp:RegularExpressionValidator ID="reg_Expre_Username" runat="server" ErrorMessage="Enter Valid UserName" Font-Size="X-Small" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$" ControlToValidate="txt_username"></asp:RegularExpressionValidator>

                </td>
                <td><asp:Label ID="lblPassword" runat="server" Text="Password" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td class="auto-style5"><asp:TextBox ID="txt_password"  runat="server" CssClass="Txtstyle4"></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="Reg_Expre_Password" runat="server" ErrorMessage="Enter Valid Password" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txt_password" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,15})"></asp:RegularExpressionValidator>
                </td>
                <td><asp:Label ID="lblPassExpDate" runat="server" Text="Passport Expiry Date" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="txt_Pass_Exp_Date" runat="server" TextMode="Date" CssClass="Txtstyle4"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RKV_passportExpDate" runat="server" ControlToValidate="txt_Pass_Exp_Date" ErrorMessage=" Please Enter Passport Expiry Date" ForeColor="Red" Font-Size="X-Small"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr align="center">
                <td  class="auto-style7" colspan="6" align="center">
                    <asp:Button  ID="btn_SignUp" runat="server" Text="SIGNUP" OnClick="btn_SignUp_Click1"  OnClientClick="Confirm()" CssClass="button" Font-Bold="True" Height="30px" Width="80px" Font-Size="Medium" BorderColor="Highlight" BackColor="Highlight"  ForeColor="White"/></td>
            </tr>
        </table>
    
    </asp:Content>
