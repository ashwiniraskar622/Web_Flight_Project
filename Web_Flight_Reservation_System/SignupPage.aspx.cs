using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web_Flight_Reservation_System

{
    public partial class SignupPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_SignUp_Click1(object sender, EventArgs e)
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            int result = obj.ExecuteQuery("INSERT INTO Passenger_Details (first_name,last_name,p_contact_no,p_nationality,p_date_of_birth,p_age,p_gender,p_email_id, p_username, p_password,p_pasport_no,p_passport_exp_date) " +
                "values('"+txt_firstname.Text+"', '"+txt_Lastname.Text+"', '"+txt_phoneNumber.Text+"', '"+txt_nationality.Text+"', '"+txt_dateofbirth.Text+"','"+txt_Age.Text+"', " +
                "'"+ddl_gender.SelectedValue+"', '"+txt_emil_address.Text+"','"+txt_username.Text+"', '"+txt_password.Text+"','"+txt_Number.Text+"','"+txt_Pass_Exp_Date.Text+"')");
            if(result==1)
            {
                DataTable dt = new DataTable();
                dt = obj.getdatareader("Select passenger_id From Passenger_Details Where p_username = '" + txt_username.Text + "' ");
                int Passenger_ID = Convert.ToInt32(dt.Rows[0][0].ToString());
                string date = DateTime.Now.Date.ToString("yyyy-MM-dd");
                int result1 = obj.ExecuteQuery("INSERT INTO Co_Passenger_Details(passenger_id,co_first_name,co_last_name,co_p_age,co_p_gender,co_p_Booking_Date,co_p_Type,co_p_status) VALUES('" + Passenger_ID + "','" + txt_firstname.Text + "','" + txt_Lastname.Text + "','" + txt_Age.Text + "','" + ddl_gender.SelectedValue + "','" + date + "','Passenger','InProgress')");
                if (result == 1)
                {
                    string confirmValue = Request.Form["confirm_value"];
                    if (confirmValue == "Yes")
                    {
                        Response.Redirect("LoginPage.aspx");
                    }
                    else
                    {
                        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You Clicked No!')", true);
                    }
                    // Response.Write("<script>alert('SignUp Successfull')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert(' Something Went Wrong')</script>");
            }
        }
    }
}