using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

namespace WebApplication2
{
    public partial class BookingTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            From.Text = "";
            To.Text = "";
            Date.Text = "";
            Time.Text = "";
            TrainNo.Text = "";
            Class.Text = "";
            NOP.Text = "";
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx",false);
        }

        protected void Next_Click(object sender, EventArgs e)

        {

            /*try
            {

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asuni\Desktop\WebApplication2\WebApplication2\App_Data\RailwayDB.mdf;Integrated Security=True");
                con.Open();
                string insertQuery = "insert into BookingTable(TrainNo,From,To,Date,Time,Class,NoOfPassengers) values (@TrainNo,@From,@To,@Date,@Time,@Class,@NoOfPassengers)";
               
                SqlCommand com = new SqlCommand(insertQuery, con);

                com.Parameters.AddWithValue("@TrainNo", TrainNo.SelectedItem.Value);
                com.Parameters.AddWithValue("@From", From.SelectedItem.Value);
                com.Parameters.AddWithValue("@To", To.SelectedItem.Value);
                com.Parameters.AddWithValue("@Date", Date.Text);
                com.Parameters.AddWithValue("@Time", Time.SelectedItem.Value);
                com.Parameters.AddWithValue("@Class", Class.SelectedItem.Value);
                com.Parameters.AddWithValue("@NoOfPassengers", NOP.SelectedItem.Value);

                com.ExecuteNonQuery();
                con.Close();


               


            }


            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }*/

            /*SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asuni\Desktop\WebApplication2\WebApplication2\App_Data\RailwayDB.mdf;Integrated Security=True");*/

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asuni\Desktop\WebApplication2\WebApplication2\App_Data\RailwayDB.mdf;Integrated Security=True");
            con.Open();
            string nic = (string)Session["user-nic"];
            string insertQuery = "insert into BookingTable(TrainNo,NIC,[From],[To],Date,Time,Class,NoOfPassengers) values (@TrainNo,'"+ nic +"',@From,@To,@Date,@Time,@Class,@NoOfPassengers)";
            /*string query = "insert into BookingTable(NIC) values(nic)";*/
            SqlCommand com = new SqlCommand(insertQuery, con);

            com.Parameters.AddWithValue("@TrainNo", TrainNo.SelectedItem.Value);
            com.Parameters.AddWithValue("@From", From.SelectedItem.Value);
            com.Parameters.AddWithValue("@To", To.SelectedItem.Value);
            com.Parameters.AddWithValue("@Date", Date.Text);
            com.Parameters.AddWithValue("@Time", Time.SelectedItem.Value);
            com.Parameters.AddWithValue("@Class", Class.SelectedItem.Value);
            com.Parameters.AddWithValue("@NoOfPassengers", NOP.SelectedItem.Value);

            


            com.ExecuteNonQuery();
            con.Close();

            Response.Redirect("TicketPrice.aspx", false);

        }

    }
}
    
