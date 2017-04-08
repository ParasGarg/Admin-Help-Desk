using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Web_Pages_Emp_Complaints : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Helpdesk"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_register.Visible = false;
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string status = "Pending";

        cmd = new SqlCommand("INSERT INTO tbl_complaints (Problem, Id, Description, Status) VALUES ('" + rbtn_prob.SelectedValue + "', '" + txt_id.Text.Trim() + "', '" + txt_des.Text.Trim() + "', '"+ status +"')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        refresh();
        lbl_register.Visible = true;

        cmd.Connection.Close();

        //Response.Redirect("~/Web Pages/Emp/Complaints.aspx");
    }

    protected void refresh()
    {
        txt_id.Text = "";
        txt_des.Text = "";    
    }
}