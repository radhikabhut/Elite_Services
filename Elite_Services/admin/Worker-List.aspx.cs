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
    public partial class Worker_List : System.Web.UI.Page
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
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                int Id = Convert.ToInt32(e.CommandArgument);
                cmd = new SqlCommand("delete  from W_Regi_tbl where Id =" + Id, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Worker-List.aspx");


            }
            else
            {
                int Id = Convert.ToInt32(e.CommandArgument);
                cs.Delete(Id);


            }
        }
    }
}