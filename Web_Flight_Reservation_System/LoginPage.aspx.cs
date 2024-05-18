using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Web_Flight_Reservation_System;

namespace Web_Flight_Reservation_System
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private bool CheckUserLogin(string username,string password)
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            DataTable dt = new DataTable();
            dt = obj.getdatareader("Select * from Passenger_Details where p_username = '" + txt_username.Text + "' AND p_password = '" + txt_password.Text + "'");
            if (dt.Rows.Count > 0)
                {
                    Session["P_ID"] = dt.Rows[0]["passenger_id"].ToString();
                    return true;
                }
                else
                {
                    return false;
                }
        }
        private bool CheckAdminLogin(string username, string password)
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            DataTable dt = new DataTable();
            dt = obj.getdatareader("Select * from Admin_Details where username = '" + txt_username.Text + "' AND password = '" + txt_password.Text + "'");
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string username = txt_username.Text;
            string password = txt_password.Text;

            bool isUser = CheckUserLogin(username, password);
            bool isAdmin = CheckAdminLogin(username, password);

            if (isUser)
            {
                Response.Write("<script>alert('Login Successfull')</script>");
                Response.Redirect("ViewDetailsPage.aspx");
            }
            else
            {
                if (isAdmin)
                {
                    Response.Write("<script>alert('Login Successfull')</script>");
                    Response.Redirect("AdminHomePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('User Not Exist Please Signup')</script>");
                }
            }
        }

        protected void linkresister_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignupPage.aspx");
        }
    }
}