using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Elite_Services.admin
{
    public partial class get : System.Web.UI.Page
    {
        Class1 cs;
        SqlConnection con;
        DataSet ds;
        void getcon()
        {
            cs = new Class1();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

            string area = Request.QueryString["area"].ToString();
            string ser = Request.QueryString["service"].ToString();
            DataList1.DataSource = cs.selectw(area,ser);
            DataList1.DataBind();

        }


    }
}