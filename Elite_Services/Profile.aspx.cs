using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Elite_Services
{
    public partial class Profile : System.Web.UI.Page
    {
        Class1 cs;
        SqlConnection con;
        SqlCommand cmd;
        DataSet ds;
        int userId;
        void getcon()
        {
            cs = new Class1();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            //DataRow row = ds.Tables[0].Rows[0];

            // Fill data into textboxes
            txt_fnm.Text = Session["Full_Name"].ToString();

            txt_gen.Text = Session["Gender"].ToString();
            txt_no.Text = Session["Mobile"].ToString();
            txt_eml.Text = Session["Email_ID"].ToString();
            txt_cty.Text = Session["City"].ToString();
            txt_add.Text = Session["Address"].ToString();
            Image1.Attributes["src"] = Session["User_Image"].ToString();


        }
    }
}


      