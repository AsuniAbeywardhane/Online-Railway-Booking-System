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
    public partial class Timetable : System.Web.UI.Page
    {
       string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asuni\Desktop\WebApplication2\WebApplication2\App_Data\RailwayDB.mdf;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlDataAdapter sqlDA = new SqlDataAdapter("SELECT * FROM TimeTable", sqlcon);
                DataTable dtbl = new DataTable();
                sqlDA.Fill(dtbl);
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }

            uname.Text = (string)Session["name"];


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
          
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx",false);
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingTickets.aspx",false);
        }

       

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}