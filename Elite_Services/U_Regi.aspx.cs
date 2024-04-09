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
    public partial class U_Regi : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        Class1 cs;
        string wi;
        void startcon()
        {
            cs = new Class1();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            startcon();
        }
        void img_upload()
        {
            wi = "imgs" + flu_ur_img.FileName;
            flu_ur_img.SaveAs(Server.MapPath(wi));

           

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            startcon();
            img_upload();
            con = cs.getcon();
            if (submit.Text == "Submit")
            {
               
               
                cmd = new SqlCommand("insert into U_Regi_tbl(User_Name,Full_Name,Gender,Mobile,Email_Id,Password,City,Address,User_Image)values ('" + txt_unm.Text + "','" + txt_fnm.Text + "','" + gender.SelectedValue + "','" + txt_mo.Text + "','" + txt_eml.Text + "','" + txt_ps.Text + "','" + txt_ct.Text + "','" + txt_add.Text + "','" + wi + "')", con);
                cmd.ExecuteNonQuery();
                Response.Redirect("U_Login.aspx");

            }
        }
    }
}