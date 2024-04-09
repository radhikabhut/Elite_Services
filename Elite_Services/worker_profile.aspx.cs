using System;
using System.Data;
using System.Data.SqlClient;

namespace Elite_Services
{
    public partial class worker_profile : System.Web.UI.Page
    {
        Class1 cs;
        SqlConnection con;
        SqlCommand cmd;
        DataSet ds;
        int workerId;
        void getcon()
        {
            cs = new Class1();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the "Id" parameter is present in the URL
                if (Request.QueryString["Id"] != null)
                {
                    // Get the value of the "Id" parameter from the URL
                     workerId = Convert.ToInt32(Request.QueryString["Id"]);
                    getcon();
                    ds = new DataSet();
                    
                    ds=cs.winfo(workerId);

                    // Check if the DataSet contains any data
                    if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                    {
                        DataRow row = ds.Tables[0].Rows[0];

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
            getcon();
            
            cmd = new SqlCommand("insert into WorkerBookings_tbl(UID,WID,BookingDate) values('"+Session["UId"]+"','"+ Convert.ToInt32(Request.QueryString["Id"]) + "','"+DateTime.Now.ToString("dd/MM/yyyy")+"')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Booked');</script>");
        }


    }
}