using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web_Flight_Reservation_System
{
    public partial class SeattingArrangmentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            no_of_pass  = Convert.ToInt32(Request.Cookies["NoOfPass"].Value);
            txt_color.BackColor = System.Drawing.Color.Navy;
        }
        int no_of_pass;

        protected int seat_cnt
        {
            get { return Session["SeatCount"] != null ? (int)Session["SeatCount"] : 0; }
            set { Session["SeatCount"] = value; }
        }
        protected int seat_price
        {
            get { return Session["SeatPrice"] != null ? (int)Session["SeatPrice"] : 0; }
            set { Session["SeatPrice"] = value; }
        }
        private void XL_Seat(Button btn)
        {
            if(seat_cnt < no_of_pass)
            {
                int base_price = Convert.ToInt32(Session["Total_Price"]);
                seat_price = seat_price + 1299;
                int total_price = base_price + seat_price;
                txt_base_price.Text = base_price.ToString();
                txt_seat_price.Text = seat_price.ToString();
                txt_total_price.Text = total_price.ToString();
                seat_cnt++;
                btn.BackColor = System.Drawing.Color.Navy;
             }
            else
            {
                Response.Write("<script>alert('You Exeeded Count')</script>");
            }
        }
        private void Window_Seat(Button btn)
        {
            if (seat_cnt < no_of_pass)
            {
                int base_price = Convert.ToInt32(Session["Total_Price"]);
                seat_price = seat_price + 300;
                int total_price = base_price + seat_price;
                txt_base_price.Text = base_price.ToString();
                txt_seat_price.Text = seat_price.ToString();
                txt_total_price.Text = total_price.ToString();
                seat_cnt++;
                btn.BackColor = System.Drawing.Color.Navy;
            }
            else
            {
                Response.Write("<script>alert('Yoy Exeeded Count')</script>");
            }
        }
        private void Middle_Seat(Button btn)
        {
            if (seat_cnt < no_of_pass)
            {
                int base_price = Convert.ToInt32(Session["Total_Price"]);
                seat_price = seat_price + 250;
                int total_price = base_price + seat_price;
                txt_base_price.Text = base_price.ToString();
                txt_seat_price.Text = seat_price.ToString();
                txt_total_price.Text = total_price.ToString();
                seat_cnt++;
                btn.BackColor = System.Drawing.Color.Navy;
            }
            else
            {
                Response.Write("<script>alert('You Exeeded Count')</script>");
            }
        }
        private void Aisle_Seat(Button btn)
        {
            if (seat_cnt < no_of_pass)
            {
                int base_price = Convert.ToInt32(Session["Total_Price"]);
                seat_price = seat_price + 300;
                int total_price = base_price + seat_price;
                txt_base_price.Text = base_price.ToString();
                txt_seat_price.Text = seat_price.ToString();
                txt_total_price.Text = total_price.ToString();
                seat_cnt++;
                btn.BackColor = System.Drawing.Color.Navy;
            }
            else
            {
                Response.Write("<script>alert('You Exeeded Count')</script>");
            }
        }
        protected void btn_1A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_1B_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_1C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_1D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_1E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_1F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_2A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_2B_Click(object sender, EventArgs e)
        {
           var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_2C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_2D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_2E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_2F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_3A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_3B_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_3C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_3D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_3E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_3F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_4A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_4B_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_4C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_4D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_4E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_4F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_5A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_5B_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_5C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_5D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_5E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
            //XL_Seat();
            //btn_5E.BackColor = System.Drawing.Color.Navy;
        }

        protected void btn_5F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_6A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_6B_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_6C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_6D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_6E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_6F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            XL_Seat(btn);
        }

        protected void btn_7A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_7B_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_7C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_7D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_7E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_7F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_8A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_8B_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_8C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_8D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_8E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_8F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_9A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_9B_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_9C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_9D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_9E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_9F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_10A_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btn_10B_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_10C_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_10D_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Aisle_Seat(btn);
        }

        protected void btn_10E_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Middle_Seat(btn);
        }

        protected void btn_10F_Click(object sender, EventArgs e)
        {
            var btn = sender as Button;
            Window_Seat(btn);
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            int Pass_Flight_ID = Convert.ToInt32(Request.Cookies["P_F_ID"].Value);
            int result = obj.ExecuteQuery("Update Passenger_Flight_Details set total_price='"+txt_total_price.Text+"' where passenger_flight_id = "+ Pass_Flight_ID);
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("PaymentPage.aspx");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You Clicked No!')", true);
            }
        }
    }
}