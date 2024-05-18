using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Threading;

namespace Web_Flight_Reservation_System
{
    public partial class FlightPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropdwnDepartual();
                //BindDropdwnArrival();
            }
            if (!IsPostBack)
            {
                BindGridview();
            }

        }
        protected void BindDropdwnDepartual()
        {
            DataTable dt = new DataTable();
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            try
            {

                dt = obj.getdatareader("select * from Location_Details");
                DDlocationDepartual.DataSource = dt;
                DDlocationDepartual.DataTextField = "location_name";
                DDlocationDepartual.DataValueField = "location_name";
                DDlocationDepartual.DataBind();
                DDlocationDepartual.Items.Insert(0, new ListItem("--Select Departual Location--", "0"));

                DDlocationArrival.DataSource = dt;
                DDlocationArrival.DataTextField = "location_name";
                DDlocationArrival.DataValueField = "location_name";
                DDlocationArrival.DataBind();
                DDlocationArrival.Items.Insert(0, new ListItem("--Select Arrival Location--", "0"));
            }
            catch (Exception ex)
            {
                Response.Write("<script LANGUAGE='Javascript'>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                dt.Dispose();
            }
        }
        protected void BindGridview()
        {
            DataSet ds = new DataSet();
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            try
            {

                string date = DateTime.Now.ToString("dd/MM/yyyy");
                ds = obj.getdataset("select flight_id,flight_name,f_source_location,f_destination_location,CONVERT(varchar(10),f_departure_date,103) as f_departure_date,CONVERT(varchar(10),f_arrival_date,103) as f_arrival_date ,airline_id, ticket_price,flight_tax from Flight_Details  where CONVERT(varchar(10),f_departure_date,103) >= '" + date + "'");
                gv_FlightDetails.DataSource = ds.Tables[0];
                gv_FlightDetails.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script LANGUAGE='Javascript'>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                ds.Dispose();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            DataTable dt = new DataTable();
            try
            {
                int AirlineId = cbl_AirlineDetails.SelectedIndex + 1;
                dt = obj.getdatareader("select *  from Flight_Details Where f_source_location = '" + DDlocationDepartual.SelectedValue + "' AND f_destination_location = '" + DDlocationArrival.SelectedValue + "' AND " +
                    "f_departure_date='" + txtDepartualDateTime.Text + "' AND  " +
                    "airline_id='" + AirlineId + "'");
                gv_FlightDetails.DataSource = dt;
                gv_FlightDetails.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script LANGUAGE='Javascript'>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                dt.Dispose();
            }
        }

        protected void gridview_Rowcommand_View_Details(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "View_Details")
                {
                    int index = Convert.ToInt32(e.CommandArgument);
                    int F_id = Convert.ToInt32(gv_FlightDetails.DataKeys[index].Value);
                    Session["FlightID"] = F_id;
                    Response.Redirect("LoginPage.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script LANGUAGE='Javascript'>alert('" + ex.Message + "')</script>");

            }
            finally
            {

            }
        }

        protected void gv_FlightDetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
        }

        protected void ShowRowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    foreach (Button button in e.Row.Cells[0].Controls.OfType<Button>())
                    {
                        if (button.CommandName == "View_Details")
                        {
                            button.Attributes["onclick"] = "if(!confirm('You Need To Login')){return false}";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script LANGUAGE='Javascript'>alert('" + ex.Message + "')</script>");
            }
            finally
            {

            }
        }
    }
}


