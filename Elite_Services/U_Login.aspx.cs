using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Elite_Services
{
    public partial class U_Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        Class1 cs;
        int i;
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

        protected void submit_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txt_eml.Text) && !(string.IsNullOrEmpty(txt_ps.Text))))
            {
                startcon();
                cmd = new SqlCommand("select * from U_Regi_tbl where Email_Id ='" + txt_eml.Text + "' and Password = '" + txt_ps.Text + "'    ", con);

                i = Convert.ToInt32(cmd.ExecuteScalar());
                if (i > 0)
                {

                    Session["email"] = txt_eml.Text;
                    Session["ps"] = txt_ps.Text;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Enter proper details')</script>");
                }
            }
            else
            {
                Response.Write("<script> alert('Please Enter details')</script>");
            }
        }
    }
}