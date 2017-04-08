using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Web_Pages_Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Helpdesk"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("INSERT INTO tbl_emp_details (Emp_Name, Fathers_Name, Address, Mobile, Extension_Number, Workstation_Number) VALUES ('" + txt_name.Text.Trim() + "', '" + txt_fname.Text.Trim() + "', '" + txt_add.Text.Trim() + "', '" + txt_mob.Text.Trim() + "', '" + txt_ext.Text.Trim() + "', '" + txt_workshop.Text.Trim() + "')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        refresh();

        cmd.Connection.Close();
    }

    protected void btn_Edit_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("UPDATE tbl_emp_details SET Emp_name='" + txt_name.Text.Trim() + "', Fathers_Name='" + txt_fname.Text.Trim() + "', Address='" + txt_add.Text.Trim() + "', Mobile='" + txt_mob.Text.Trim() + "', Extension_Number='" + txt_ext.Text.Trim() + "', Workstation_Number='" + txt_workshop.Text.Trim() + "' WHERE ID='"+ hddn_id.Value +"' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        refresh();

        cmd.Connection.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("DELETE FROM tbl_emp_details WHERE ID='"+ hddn_id.Value +"' ", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        refresh();

        cmd.Connection.Close();

    }

    protected void refresh()
    {
        txt_name.Text = "";
        txt_fname.Text = "";
        txt_add.Text = "";
        txt_mob.Text = "";
        txt_ext.Text = "";
        txt_workshop.Text = "";
    }
}