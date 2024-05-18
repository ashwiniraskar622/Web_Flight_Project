using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web_Flight_Reservation_System
{
    public partial class AddLocationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindGridview();
            }
        }
        protected void BindGridview()
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            DataTable dt = new DataTable();
            dt = obj.getdatareader("select * from Location_Details");
            GridviewLocation.DataSource = dt;
            GridviewLocation.DataBind();
        }

        protected void LocationRowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridviewLocation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Control control = null;
            if (GridviewLocation.FooterRow != null)
            {
                control = GridviewLocation.FooterRow;
            }
            else
            {
                control = GridviewLocation.Controls[0].Controls[0];
            }
            string txtLN = (control.FindControl("txtLN") as TextBox).Text;
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            int result = obj.ExecuteQuery("INSERT INTO Location_Details(location_name) Values('"+txtLN+"')");
            if (result == 1)
            {
                Response.Write("<script LANGUAGE='Javascript'>alert('Location Inserted')</script>");
            }
            this.BindGridview();
        }

        protected void Location_Row_Deleting(object sender, GridViewDeleteEventArgs e)
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            int id = Convert.ToInt32(GridviewLocation.DataKeys[e.RowIndex].Value);
            string query = "Delete from Location_Details where location_id=" + id;
            //obj.ExecuteNonQuery(query);
            //BindDataState();
        }

        protected void location_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = Convert.ToInt32(GridviewLocation.DataKeys[e.RowIndex].Value);
            TextBox txtname = GridviewLocation.Rows[e.RowIndex].FindControl("txtLocationName") as TextBox;
            //Label lblcid = GridviewLocation.Rows[e.RowIndex].FindControl("Lable2") as Label;
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            int result = obj.ExecuteQuery("Update Location_Details set location_name = '" + txtname.Text + "' where location_id=" + index);
            if (result == 1)
            {
                Response.Write("<script LANGUAGE= 'Javascript'>alert('Location Updated')</script>");
            }
            GridviewLocation.EditIndex = -1;
            BindGridview();
        }

        protected void location_Row_Editing(object sender, GridViewEditEventArgs e)
        {
            GridviewLocation.EditIndex = e.NewEditIndex;
            BindGridview();
        }

        protected void Location_Row_CancleEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridviewLocation.EditIndex = -1;
            BindGridview();
        }
    }
}