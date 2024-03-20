using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elite_Services.admin
{
    public partial class p1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {

            Response.Redirect("get.aspx?area='"+DropDownList1.SelectedValue+"'&service='"+DropDownList2.SelectedValue+"'");
        }
    }
}