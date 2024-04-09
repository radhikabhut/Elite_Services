using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elite_Services
{
    public partial class Booking : System.Web.UI.Page
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
            if (!IsPostBack)
            {

            startcon();
            fillgrid();
            }
        }
        void fillgrid()
        {
            startcon();
            //da = new SqlDataAdapter("select t3.* from WorkerBookings_tbl AS t1 JOIN U_Regi_tbl AS t2 ON t1.UID = t2.Id  JOIN W_Regi_tbl AS t3 on t1.WID = t3.Id where t2.Id="+ Session["UId"].ToString() +" and t1.Status='book'", con);
            da = new SqlDataAdapter("select t1.Id as ID,t3.* from WorkerBookings_tbl AS t1 JOIN U_Regi_tbl AS t2 ON t1.UID = t2.Id  JOIN W_Regi_tbl AS t3 on t1.WID = t3.Id where t2.Id='"+Session["UId"]+"' and t1.Status='book'", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                startcon();
                int Id = Convert.ToInt32(e.CommandArgument);
                cmd = new SqlCommand("update WorkerBookings_tbl set Status='cancle' where Id =" + Id, con);
                cmd.ExecuteNonQuery();
                fillgrid();


            }
          
        }
    }
}