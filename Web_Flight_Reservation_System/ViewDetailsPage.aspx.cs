using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
//using Web_Flight_Reservation_System;

namespace Web_Flight_Reservation_System
{
    public partial class ViewDetailsPage : System.Web.UI.Page
    {
        SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();

        protected void Page_Load(object sender, EventArgs e)
        {
            flightDetails();
        }
        protected void flightDetails()
        {
            SessionLable.Text = string.Empty;
            if (Session["FlightID"] != null)
            {
                SessionLable.Text = Session["FlightID"].ToString();
            }
            DataTable dt = new DataTable();
            dt = obj.getdatareader("Select f_source_location,f_destination_location,CONVERT(varchar(10),f_departure_date,103) as f_departure_date,CONVERT(varchar(10),f_arrival_date,103) as f_arrival_date from Flight_Details Where flight_id =" + SessionLable.Text);

            txtDeparture_loc.Text = dt.Rows[0]["f_source_location"].ToString();
            txt_Arrival_loc.Text = dt.Rows[0]["f_destination_location"].ToString();
            txt_Departual_Date.Text = dt.Rows[0]["f_departure_date"].ToString();
            txt_Arrival_Date.Text = dt.Rows[0]["f_arrival_date"].ToString();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("FlightPage.aspx");
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            int result = obj.ExecuteQuery("Insert Into Passenger_Flight_Details (passenger_id,flight_id,f_class,no_of_passenger,ticket_price,flight_tax,total_price)" +
                                         "values('"+ Session["P_ID"] + "','" + SessionLable.Text + "','" + ddl_class.SelectedValue + "','" + ddl_no_of_passengers.SelectedValue + "','"+txtTicketfare.Text+"','"+txtTax.Text+"','"+txtTotalfare.Text+"')");
            HttpCookie strNOP = new HttpCookie("NoOfPass");
            strNOP.Value = ddl_no_of_passengers.SelectedValue;
            Response.Cookies.Add(strNOP);
            strNOP.Expires = DateTime.Now.AddMinutes(20);

            SQLDataAccessHelper1 obj1 = new SQLDataAccessHelper1();
            DataTable dt = new DataTable();
            dt = obj.getdatareader("select top 1 passenger_flight_id from Passenger_Flight_Details where passenger_id = '" + Session["P_ID"] + "' order by passenger_flight_id desc ");
            HttpCookie Passanger_F_ID = new HttpCookie("P_F_ID");
            Passanger_F_ID.Value = (dt.Rows[0]["passenger_flight_id"].ToString());
            Response.Cookies.Add(Passanger_F_ID);
            Passanger_F_ID.Expires = DateTime.Now.AddMinutes(20);

            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("Co_PassangerPage.aspx");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('you Clicked No!')", true);
            }
        }

        protected void ddl_no_of_passengers_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = obj.getdatareader("Select * from Flight_Details Where flight_id =" + SessionLable.Text);

            int ticket_price = Convert.ToInt32(dt.Rows[0]["ticket_price"].ToString()) * Convert.ToInt32(ddl_no_of_passengers.SelectedValue);
            int ticket_tax = Convert.ToInt32(dt.Rows[0]["flight_tax"].ToString());
            int price_tax = ticket_price * ticket_tax / 100;
            int total_price = price_tax + ticket_price;
            Session["Total_Price"] = total_price;
            txtTicketfare.Text = ticket_price.ToString();
            txtTax.Text = dt.Rows[0]["flight_tax"].ToString();
            txtTotalfare.Text = total_price.ToString();
        }
    }
}