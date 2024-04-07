using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Elite_Services
{
    public partial class worker_list : System.Web.UI.Page
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
            if (!IsPostBack)
            {

            getcon();

            string area = Request.QueryString["area"].ToString();
            string ser = Request.QueryString["service"].ToString();
            DataList1.DataSource = cs.selectw(area, ser);
            DataList1.DataBind();
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("worker_profile.aspx?Id=" + id);
        }

        //protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}
    }
}