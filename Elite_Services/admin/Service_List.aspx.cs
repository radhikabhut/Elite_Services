using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Elite_Services.admin
{
    public partial class Service_List : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Class1 cs;

        void startcon()
        {
            con = new SqlConnection();
            cs = new Class1();
            con = cs.getcon();

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            startcon();
            fillgrid();
        }
        void fillgrid()
        {
            con = cs.getcon();
            GridView1.DataSource = cs.service_select();
            GridView1.DataBind();
        }
        void clear()
        {
            txt_service.Text = "";

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Save")
            {
                startcon();
                con = cs.getcon();

                cs.service_insert(txt_service.Text);
                fillgrid();
                clear();
            }
            else
            {
                startcon();
                con = cs.getcon();
                cs.Update(Convert.ToInt32(ViewState["id"]), txt_service.Text);
                clear();
                fillgrid();
            }
        }
        void service_filltext()
        {
            ds = new DataSet();
            ds = cs.filldata(Convert.ToInt32(ViewState["id"]));
            txt_service.Text = (ds.Tables[0].Rows[0][1]).ToString();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int Id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = Id;
                Button1.Text = "Update";
                service_filltext();
            }
            else
            {
                int Id = Convert.ToInt32(e.CommandArgument);
                cs.service_Delete(Id);
                fillgrid();

            }
        }
    }
}




