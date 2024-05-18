using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web_Flight_Reservation_System
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataTable dt = new DataTable();
            int Pass_Flight_ID = Convert.ToInt32(Request.Cookies["P_F_ID"].Value);
            dt = obj.getdatareader("select f_source_location,f_destination_location,total_price from Flight_Details inner join Passenger_Flight_Details on  Flight_Details.flight_id = Passenger_Flight_Details.flight_id where passenger_flight_id = '"+Pass_Flight_ID+"'");
            txtSourceLocation.Text = dt.Rows[0]["f_source_location"].ToString();
            txtDestLocation.Text = dt.Rows[0]["f_destination_location"].ToString();
            txt_price.Text = dt.Rows[0]["total_price"].ToString();

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Response.Redirect("PaymentPage.aspx");
        }
        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Response.Redirect("NetBankingPage.aspx");
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            Response.Redirect("UPIPaymentPage.aspx");
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
           
        }
        protected void btn_Pay_Click(object sender, EventArgs e)
        {
            

            int result = obj.ExecuteQuery("update Co_Passenger_Details set co_p_status = 'Complete' where co_p_Type = 'Co-Passenger' AND passenger_id = " + Session["P_ID"]);
            if(result > 0)
            {
                string confirmValue = Request.Form["confirm_value"];
                if (confirmValue == "Yes")
                {
                    Response.Redirect("ThankYouPage.aspx");
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You Clicked No!')", true);
                }
            }
            
        }
    }
}
