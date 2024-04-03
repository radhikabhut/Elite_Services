using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elite_Services
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Worker.aspx?area='" + DDArea.SelectedValue + "'&service='" + DDService.SelectedValue + "'");

        }
    }
}