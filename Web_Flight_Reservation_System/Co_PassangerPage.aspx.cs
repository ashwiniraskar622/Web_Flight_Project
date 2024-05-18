using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web_Flight_Reservation_System
{
    public partial class Co_PassangerPage : System.Web.UI.Page
    {
        SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
        
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (!IsPostBack)
            {
                BindGridviewData();
                //Button btnInsert = GridView1.Rows[0].Cells[5].FindControl("btnINsert") as Button;
               // btnInsert.Enabled = false;
            }
           
        }
        protected void BindGridviewData()
        {
            lblSessionlable.Text = string.Empty;
            if (Session["P_ID"] != null)
            {
                lblSessionlable.Text = Session["P_ID"].ToString();
            }
            
            DataTable dt = new DataTable();
            dt = obj.getdatareader("Select co_first_name,co_last_name,co_p_age,co_p_gender from Co_Passenger_Details Where  co_p_status='InProgress' AND passenger_id = '" + lblSessionlable.Text + "'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }
        protected void btnINsert_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = obj.getdatareader("Select co_first_name,co_last_name,co_p_age,co_p_gender from Co_Passenger_Details Where  co_p_status='InProgress'  AND passenger_id = '" + lblSessionlable.Text + "'");
            int pcount = 0;
            pcount = dt.Rows.Count;

            if (Request.Cookies["NoOfPass"] != null)
            {
                lblCookie.Text = Request.Cookies["NoOfPass"].Value;

            }
            int no_of_passengers = (int.Parse(lblCookie.Text));


            if (pcount < no_of_passengers)
            {
                
                    GridViewRow row = GridView1.FooterRow;
                    TextBox txtFirstName = row.FindControl("txtFN") as TextBox;
                    TextBox txtLastName = row.FindControl("txtLN") as TextBox;
                    TextBox txtAge = row.FindControl("txtA") as TextBox;
                    DropDownList ddl_gender = row.FindControl("ddl_gender") as DropDownList;

                    string date = DateTime.Now.Date.ToString("yyyy-MM-dd");
                    int result = obj.ExecuteQuery("INSERT INTO Co_Passenger_Details(passenger_id,co_first_name,co_last_name,co_p_age,co_p_gender,co_p_Booking_Date,co_p_Type,co_p_status)VALUES('" + lblSessionlable.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtAge.Text + "','" + ddl_gender.SelectedValue + "','" + date + "','Co-Passenger','InProgress')");
                    if (result == 1)
                    {
                        BindGridviewData();
                    }

                }
           
            else
            {
                GridViewRow row = GridView1.FooterRow;
                Response.Write("<script LANGUAGE='Javascript'>alert('unable to insert')</script>");
                Button btn = row.FindControl("btnINsert") as Button;
                btn.Enabled = false;
            }

        }
        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("SeattingArrangmentPage.aspx");
        }
    }
}
