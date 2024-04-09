using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

using System.Configuration;

namespace Elite_Services
{
    public class Class1
    {
        string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Elite_Service\Elite_Services\Elite_Services\App_Data\elite_db.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        public SqlConnection getcon()
        {
            string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            con = new SqlConnection(s);
            con.Open();
            return con;
        }
        public void insert(string Area)
        {
            cmd = new SqlCommand("insert into Area_List_tbl(Area_Name) values ('" + Area + "')", con);
            cmd.ExecuteNonQuery();

        }

        public DataSet select()
        {
            da = new SqlDataAdapter("select * from Area_List_tbl ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void Delete(int id)
        {
            cmd = new SqlCommand("delete from Area_List_tbl where Id= '" + id + "'", con);
            cmd.ExecuteNonQuery();

        }

        public void Update(int id, string Area)
        {
            cmd = new SqlCommand("update Area_List_tbl set Area_Name='" + Area + "' where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }

        public DataSet filldata(int id)
        {
            da = new SqlDataAdapter("select * from Area_List_tbl where Id=' " + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        //// Service

        public void service_insert(string Service)
        {
            cmd = new SqlCommand("insert into Service_List_tbl(Service_Name) values ('" + Service + "')", con);
            cmd.ExecuteNonQuery();

        }

        public DataSet service_select()
        {
            da = new SqlDataAdapter("select * from Service_List_tbl ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void service_Delete(int id)
        {
            cmd = new SqlCommand("delete from Service_List_tbl where Id= '" + id + "'", con);
            cmd.ExecuteNonQuery();

        }

        public void service_Update(int id, string Area)
        {
            cmd = new SqlCommand("update Service_List_tbl set Area_Name='" + Area + "' where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }

        public DataSet service_filldata(int id)
        {
            da = new SqlDataAdapter("select * from Service_List_tbl where Id=' " + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //worker

        public DataSet selectw(string area,string ser)
        {
            getcon();
            string sql = "select * from W_Regi_tbl where Area=" + area + " and Service=" + ser + " ";

            da = new SqlDataAdapter(sql, con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet winfo(int id)
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM W_Regi_tbl WHERE Id ="+id,con);
            ds = new DataSet();
            da.Fill(ds);
            
            return ds;
        }




    }
}
    
