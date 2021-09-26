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
    public partial class Ticket : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\RailwayDB.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                string query = "SELECT TOP(1) * FROM BookingTable ORDER BY OrderId DESC ";
                SqlCommand SDA = new SqlCommand(query, sqlcon);
                SqlDataReader data = SDA.ExecuteReader();
                if(data.Read())
                {
                    TrainNo.Text = data.GetValue(2).ToString();
                    Date.Text = data.GetValue(5).ToString();
                    Time.Text = data.GetValue(6).ToString();
                    From.Text = data.GetValue(3).ToString();
                    To.Text = data.GetValue(4).ToString();
                    Class.Text = data.GetValue(7).ToString();
                    NOP.Text = data.GetValue(8).ToString();
                    NIC.Text = data.GetValue(1).ToString();

                }
                sqlcon.Close();
            }

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx", false);
        }
    }
}