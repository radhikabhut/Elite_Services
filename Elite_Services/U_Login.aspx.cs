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
        SqlDataAdapter da;
        DataSet ds;
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
                string sql = "select * from U_Regi_tbl where Email_Id ='" + txt_eml.Text + "' and Password = '" + txt_ps.Text + "'    ";
                cmd = new SqlCommand(sql, con);

                i = Convert.ToInt32(cmd.ExecuteScalar());
                if (i > 0)
                {
                    da = new SqlDataAdapter(sql,con);
                    ds = new DataSet();
                    da.Fill(ds);



                    Session["UId"] = (ds.Tables[0].Rows[0][0]).ToString();
                    Session["User_Name"] = (ds.Tables[0].Rows[0][1]).ToString();
                    Session["Full_Name"] = (ds.Tables[0].Rows[0][2]).ToString();
                    Session["Gender"] = (ds.Tables[0].Rows[0][3]).ToString();
                    Session["Mobile"] = (ds.Tables[0].Rows[0][4]).ToString();
                    Session["Email_Id"] = txt_eml.Text;
                    Session["City"] = (ds.Tables[0].Rows[0][6]).ToString();
                    Session["Address"] = (ds.Tables[0].Rows[0][7]).ToString();
                    Session["User_Image"] = (ds.Tables[0].Rows[0][8].ToString());

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