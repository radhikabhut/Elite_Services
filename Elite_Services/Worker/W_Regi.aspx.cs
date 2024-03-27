using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Elite_Services.Worker
{
    public partial class W_Regi : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        Class1 cs;
        string fnm, wi, ws, we;

      

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
            wi = "../imgs/" + flu_ur_img.FileName;
            flu_ur_img.SaveAs(Server.MapPath(wi));

            ws = "../imgs/" + flu_skill_img.FileName;
            flu_skill_img.SaveAs(Server.MapPath(ws));

            we = "../imgs/" + flu_exp_img.FileName;
            flu_exp_img.SaveAs(Server.MapPath(we));


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            startcon();
            con = cs.getcon();
            img_upload();
            if (submit.Text == "Submit")
            {
                cmd = new SqlCommand("insert into W_Regi_tbl(User_Name,Full_Name,Gender,Contect_no,Email_Id,Password,Service,Area,Address,Worker_Image,Worker_skill,Worker_Experiance)values ('" + txt_unm.Text + "','" + txt_fnm.Text + "','" + Gender.SelectedValue + "','" + txt_no.Text + "','" + txt_eml.Text + "','" + txt_ps.Text + "','" + drp_service.SelectedValue + "','" + drp_area.SelectedValue + "','" + txt_add.Text + "','" + wi + "','" + ws + "','" + we + "')", con);
                cmd.ExecuteNonQuery();
                Response.Redirect("WLogin.aspx");

            }
        }

    }
}