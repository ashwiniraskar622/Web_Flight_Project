using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web_Flight_Reservation_System
{
    public partial class AddFlightPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDatagridview();
            }

        }
        private void BindDatagridview()
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            DataTable dt = new DataTable();
            dt = obj.getdatareader("Select Airline_Details.airline_id, flight_id,airline_name,flight_name,f_source_location,f_destination_location,f_departure_date,f_departure_date,f_arrival_date,ticket_price,flight_tax from Flight_Details INNER JOIN Airline_Details ON Flight_Details.airline_id = Airline_Details.airline_id");
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void RowDataBound(object sender, GridViewRowEventArgs e)
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            if(e.Row.RowType == DataControlRowType.DataRow && GridView2.EditIndex == e.Row.RowIndex)
            {
                DropDownList ddAN = (DropDownList)e.Row.FindControl("ddlAN");
                DataTable dt = new DataTable();
                dt = obj.getdatareader("select * from Airline_Details");
                ddAN.DataSource = dt;
                ddAN.DataTextField = "airline_name";
                ddAN.DataValueField = "airline_id";
                ddAN.DataBind();
                ddAN.Items.Insert(0, new ListItem("--select Airline--", "0"));

                DataTable dt1 = new DataTable();
                dt1 = obj.getdatareader("select * from Location_Details");
                DropDownList ddl1 = (DropDownList)e.Row.FindControl("ddlSL");
                ddl1.DataSource = dt1;
                ddl1.DataTextField = "location_name";
                ddl1.DataValueField = "location_name";
                ddl1.DataBind();
                ddl1.Items.Insert(0, new ListItem("-Select SourceLocation-", "0"));

                DataTable dt2 = new DataTable();
                dt2 = obj.getdatareader("select * from Location_Details");
                DropDownList ddl2 = (DropDownList)e.Row.FindControl("ddlDL");
                ddl2.DataSource = dt2;
                ddl2.DataTextField = "location_name";
                ddl2.DataValueField = "location_name";
                ddl2.DataBind();
                ddl2.Items.Insert(0, new ListItem("-Select DestinationLocation-", "0"));
            }


            if (e.Row.RowType == DataControlRowType.Footer)
            {
                DataSet ds = new DataSet();
                ds = obj.getdataset("select * from Airline_Details");
                DropDownList ddl = (DropDownList)e.Row.FindControl("ddlairlineName");
                ddl.DataSource = ds;
                ddl.DataTextField = "airline_name";
                ddl.DataValueField = "airline_id";
                ddl.DataBind();
                ddl.Items.Insert(0, new ListItem("-Select Airline-", "0"));

                DataSet ds1 = new DataSet();
                ds = obj.getdataset("select * from Location_Details");
                DropDownList ddl1 = (DropDownList)e.Row.FindControl("ddlSourceLocation");
                ddl1.DataSource = ds;
                ddl1.DataTextField = "location_name";
                ddl1.DataValueField = "location_name";
                ddl1.DataBind();
                ddl1.Items.Insert(0, new ListItem("-Select SourceLocation-", "0"));

                DataSet ds2 = new DataSet();
                ds = obj.getdataset("select * from Location_Details");
                DropDownList ddl2 = (DropDownList)e.Row.FindControl("ddlDestiLocation");
                ddl2.DataSource = ds;
                ddl2.DataTextField = "location_name";
                ddl2.DataValueField = "location_name";
                ddl2.DataBind();
                ddl2.Items.Insert(0, new ListItem("-Select DestinationLocation-", "0"));
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Control control = null;
            if (GridView2.FooterRow != null)
            {
                control = GridView2.FooterRow;
            }
            else
            {
                control = GridView2.Controls[0].Controls[0];               
            }
            DropDownList ddlairlineName = (control.FindControl("ddlairlineName") as DropDownList);
            string txtFN = (control.FindControl("txtFN") as TextBox).Text;
            DropDownList ddlSourceLocation = (control.FindControl("ddlSourceLocation") as DropDownList);
            DropDownList ddlDestiLocation = (control.FindControl("ddlDestiLocation") as DropDownList);
            string txtDD = (control.FindControl("txtDD") as TextBox).Text;
            string txtAD = (control.FindControl("txtAD") as TextBox).Text;
            string txtTP = (control.FindControl("txtTP") as TextBox).Text;
            string txtFTax = (control.FindControl("txtFTax") as TextBox).Text;

            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            int result = obj.ExecuteQuery("INSERT INTO Flight_Details(airline_id,flight_name,f_source_location,f_destination_location,CONVERT(varchar(10),f_departure_date,103) as f_departure_date,CONVERT(varchar(10),f_arrival_date,103) as f_arrival_date,ticket_price,flight_tax) Values ('" + ddlairlineName.SelectedValue + "','" +txtFN+ "','"+ddlSourceLocation.SelectedValue+"','"+ddlDestiLocation.SelectedValue+"','"+txtDD+"','"+txtAD+"','"+txtTP+"','"+txtFTax+"')");
            if (result == 1)
            {
                Response.Write("<script LANGUAGE='Javascript'>alert('Flight Details Inserted')</script>");
            }
            this.BindDatagridview();
        }

        protected void Flight_Row_Editing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            BindDatagridview();
        }

        protected void Flight_Row_Updating(object sender, GridViewUpdateEventArgs e)
        {
            int index = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
           // TextBox txtAN = GridView2.Rows[e.RowIndex].FindControl("txtAN") as TextBox;
             DropDownList ddlAN = GridView2.Rows[e.RowIndex].FindControl("ddlAN") as DropDownList;
            TextBox txtFlightName = GridView2.Rows[e.RowIndex].FindControl("txtFlightName") as TextBox; 
             DropDownList ddlSL = GridView2.Rows[e.RowIndex].FindControl("ddlSL") as DropDownList;
            DropDownList ddlDL = GridView2.Rows[e.RowIndex].FindControl("ddlDL") as DropDownList;
            TextBox txtDepartualDate = GridView2.Rows[e.RowIndex].FindControl("txtDepartualDate") as TextBox;
            TextBox txtArrivalDate = GridView2.Rows[e.RowIndex].FindControl("txtArrivalDate") as TextBox;
            TextBox txtTicketPrice = GridView2.Rows[e.RowIndex].FindControl("txtTicketPrice") as TextBox;
            TextBox txtFlightTax = GridView2.Rows[e.RowIndex].FindControl("txtFlightTax") as TextBox;
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            int result = obj.ExecuteQuery("Update Flight_Details set airline_id='" + ddlAN.Text + "' ,flight_name = '" + txtFlightName.Text + "',f_source_location='" + ddlSL.SelectedValue + "',f_destination_location='" + ddlDL.SelectedValue + "',CONVERT(varchar(10),f_departure_date,103) as f_departure_date ='" + txtDepartualDate.Text + "',CONVERT(varchar(10),f_arrival_date,103) as f_arrival_date='" + txtArrivalDate.Text + "',ticket_price ='" + txtTicketPrice.Text + "',flight_tax ='" + txtFlightTax.Text + "' where flight_id=" + index);
            if (result == 1)
            {
                Response.Write("<script LANGUAGE= 'Javascript'>alert('Flight Details Updated')</script>");
            }
            GridView2.EditIndex = -1;
            BindDatagridview();
        }

        protected void Flight_Row_CancleEditing(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            BindDatagridview();
        }

        protected void Flight_Row_Deliting(object sender, GridViewDeleteEventArgs e)
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            int id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
            string query = "Delete from Flight_Details where flight_id=" + id;
            //obj.ExecuteNonQuery(query);
            //BindDatagridview();
        }
    }
}