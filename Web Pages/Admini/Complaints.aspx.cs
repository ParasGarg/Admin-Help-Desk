using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Web_Pages_Admini_Complaints : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Helpdesk"].ConnectionString);
    SqlCommand cmd;

    string status;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

     protected void gv_complaints_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_complaints.PageIndex = e.NewPageIndex;
        BindGrid();
    }

    protected void BindGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM tbl_complaints", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gv_complaints.DataSource = ds;
        gv_complaints.DataBind();
    }

    //protected void gv_complaints_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    string Id = gv_complaints.Rows[gv_complaints.SelectedIndex].Cells[1].Text.ToString();

    //    if (e.CommandName.ToString() == "ddl_status")
    //    {
    //        string status = gv_complaints.Rows[gv_complaints.SelectedIndex].Cells[4].Text.ToString();
    //        cmd = new SqlCommand("INSERT INTO tbl_complaints VALUES(Status) WHERE Id='" + Id + "' ", con);
    //        cmd.Connection.Open();
    //        cmd.ExecuteNonQuery();
    //        cmd.Connection.Close();
    //    }

    //    if (e.CommandName.ToString() == "gv_delete")
    //    {
    //        cmd = new SqlCommand("DELETE FROM tbl_admin_auto WHERE Id ='" + Id + "' ", con);
    //        cmd.Connection.Open();
    //        cmd.ExecuteNonQuery();
    //        cmd.Connection.Close();
    //    }


    //    BindGrid();
    //}
}
