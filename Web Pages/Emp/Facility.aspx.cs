using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Web_Pages_Emp_Facility : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Helpdesk"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_request.Visible = false;
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string status = "Pending";

        cmd = new SqlCommand("INSERT INTO tbl_std (Id, Extension, Manger_Id, Manger_Name, Purpose, Status) VALUES ('" + txt_id.Text.Trim() + "', '" + txt_ext_no.Text.Trim() + "','" + txt_mngr_id.Text.Trim() + "', '" + txt_mngr_name.Text.Trim() + "', '" + txt_purpose.Text.Trim() + "', '" + status + "')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        refresh();
        lbl_request.Visible = true;

        cmd.Connection.Close();

        //Response.Redirect("~/Web Pages/Emp/Facility.aspx");
    }

    protected void refresh()
    {
        txt_id.Text = "";
        txt_ext_no.Text = "";
        txt_mngr_id.Text = "";
        txt_mngr_name.Text = "";
        txt_purpose.Text = "";
    }
}