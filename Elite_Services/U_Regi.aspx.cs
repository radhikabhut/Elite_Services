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
        void startcon()
        {
            cs = new Class1();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            startcon();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            startcon();
            if (submit.Text == "Submit")
            {
                cmd = new SqlCommand("insert into U_Regi_tbl(User_Name,Full_Name,Gender,Mobile,Email_Id,Password,City,Address)values ('" + txt_unm.Text + "','" + txt_fnm.Text + "','" + gender.SelectedValue + "','" + txt_mo.Text + "','" + txt_eml.Text + "','" + txt_ps.Text + "','" + txt_ct.Text + "','" + txt_add.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Redirect("U_Login.aspx");

            }
        }
    }
}