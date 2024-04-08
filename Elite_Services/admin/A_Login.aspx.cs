using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elite_Services.admin
{
    public partial class W_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if( txt_id.Text=="Pina" && txt_pass.Text == "123123")
            {
                Response.Redirect("Index.aspx");
            } 
            else
            {
                Response.Write("<script>alert('Enter proper credational')</script>");
            }
        }
    }
}