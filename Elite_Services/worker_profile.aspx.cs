using System;
using System.Data;

namespace Elite_Services
{
    public partial class worker_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the "Id" parameter is present in the URL
                if (Request.QueryString["Id"] != null)
                {
                    // Get the value of the "Id" parameter from the URL
                    int workerId = Convert.ToInt32(Request.QueryString["Id"]);

                    // Create an instance of Class1
                    Class1 objclass = new Class1();

                    // Call the winfo method with the workerId parameter
                    DataSet workerData = objclass.winfo(workerId);

                    // Check if the DataSet contains any data
                    if (workerData != null && workerData.Tables.Count > 0 && workerData.Tables[0].Rows.Count > 0)
                    {
                        DataRow row = workerData.Tables[0].Rows[0];
                        // Fill data into textboxes
                        txt_fnm.Text = row["Full_Name"].ToString();
                        txt_gen.Text = row["Gender"].ToString();
                        txt_no.Text = row["Contect_no"].ToString();
                        txt_serv.Text = row["Service"].ToString();
                        txt_add.Text = row["Address"].ToString();

                        // Set image URL
                        if (!string.IsNullOrEmpty(row["Worker_Image"].ToString()))
                        {
                            Image1.ImageUrl = row["Worker_Image"].ToString();
                        }
                        else
                        {
                            // If image URL is empty, set a default image
                            Image1.ImageUrl = "default_image_url.jpg"; // Replace with your default image URL
                        }
                    }
                }
            }

        }


        protected void submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("booking.aspx");
        }


    }
}