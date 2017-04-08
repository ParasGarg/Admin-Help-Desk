using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Web_Pages_Emp_Stationery : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Helpdesk"].ConnectionString);
    SqlCommand cmd; 

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_success.Visible = false;
        txt_item_ppr.Enabled = false;
        txt_item_pen.Enabled = false;
        txt_item_file.Enabled = false;
        txt_item_other.Enabled = false;

        fill();
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string status = "Pending";
        fill();

        cmd = new SqlCommand("INSERT INTO tbl_stationery (ID, Item_File, Item_Ppr, Item_Pen, Item_Others, Qty_File, Qty_Ppr, Qty_Pen, Qty_Others, Status) VALUES ('" + txt_id.Text.Trim() + "', '" + txt_item_file.Text.Trim() + "', '" + txt_item_pen.Text.Trim() + "', '" + txt_item_ppr.Text.Trim() + "', '" + txt_item_other.Text.Trim() + "', '" + txt_qty_file.Text.Trim() + "', '" + txt_qty_ppr.Text.Trim() + "', '" + txt_qty_pen.Text.Trim() + "', '" + txt_qty_other.Text.Trim() + "', '" + status + "')", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();

        refresh();
        lbl_success.Visible = true;

        cmd.Connection.Close();

        //Response.Redirect("~/Web Pages/Emp/Stationery.aspx");
    }

    protected void fill()
    {
        txt_item_file.Text = rbtn_file.SelectedValue;
        txt_item_ppr.Text = rbtn_ppr.SelectedValue;
        txt_item_pen.Text = rbtn_pen.SelectedValue;
        txt_item_other.Text = rbtn_other.SelectedValue;
}

    protected void refresh()
    {
        txt_id.Text = "";
        txt_item_file.Text = "";
        txt_item_ppr.Text = "";
        txt_item_pen.Text = "";
        txt_item_other.Text = "";
        txt_qty_file.Text = "";
        txt_qty_ppr.Text = "";
        txt_qty_pen.Text = "";
        txt_qty_other.Text = "";
     }
}
