using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Web_Pages_Employee_Workstation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Helpdesk"].ConnectionString);
    SqlCommand cmd; 

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_success.Visible = false;
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string status = "Pending";

        cmd = new SqlCommand("INSERT INTO tbl_Workstation (ID, Old_Workstation, New_Workstation, Old_Extension, New_Extension, Status) VALUES ('" + txt_id.Text.ToString() + "', '" + txt_old_work.Text.Trim() + "', '" + txt_new_work.Text.Trim() + "', '" + txt_old_ext.Text.Trim() + "', '" + txt_new_ext.Text.Trim() + "', '"+ status +"')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        refresh();
        lbl_success.Visible = true;

        cmd.Connection.Close();

        //Response.Redirect("~/Web Pages/Emp/Workstation.aspx");
    }

    protected void refresh()
    {
        txt_id.Text = "";
        txt_old_work.Text = "";
        txt_new_work.Text = "";
        txt_old_ext.Text = "";
        txt_new_ext.Text = "";
    }
}