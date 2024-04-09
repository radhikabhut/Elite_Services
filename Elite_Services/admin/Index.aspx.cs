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
    public partial class Index : System.Web.UI.Page
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
            startcon();
            da = new SqlDataAdapter(" select t1.*,t2.User_Name,t3.USer_Name as Wname from WorkerBookings_tbl AS t1 JOIN U_Regi_tbl AS t2 ON t1.UID = t2.Id  JOIN W_Regi_tbl AS t3 on t1.WID = t3.Id ",con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
       



    }

}