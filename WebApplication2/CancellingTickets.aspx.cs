using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

 
namespace WebApplication2
{
    
    public partial class CancellingTickets : System.Web.UI.Page

    {
        

        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\RailwayDB.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                
                sqlcon.Open();
                string nic =(string) Session["user-nic"];
                SqlDataAdapter sqlDA = new SqlDataAdapter("SELECT * FROM BookingTable WHERE NIC = '"+ nic +"'", sqlcon);
                DataTable dtbl = new DataTable();
                sqlDA.Fill(dtbl);
                GridView1.DataSourceID = null;
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
               


            }

            uname.Text = (string)Session["name"];
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx",false);
        }




        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx",false);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      
    }
}