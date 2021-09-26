using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace WebApplication2
{
    public partial class LogIn : System.Web.UI.Page
    {
        public string encryption(string entered_password)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encrypt;

            UTF8Encoding encode = new UTF8Encoding();
            encrypt = md5.ComputeHash(encode.GetBytes(entered_password));
            StringBuilder encryptData = new StringBuilder();

            for (int rr = 0; rr < encrypt.Length; rr++)
            {
                encryptData.Append(encrypt[rr].ToString());

            }

            return encryptData.ToString();



        }
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asuni\Desktop\WebApplication2\WebApplication2\App_Data\RailwayDB.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {


        }
       
       

        protected void Button2_Click(object sender, EventArgs e)
        {
           
                string nic = TextBox3.Text;
                string password = TextBox4.Text;
                //string passwordEncrypt = encryption(password);
                //Label4.Text = passwordEncrypt;
                using (SqlConnection sqlcon = new SqlConnection(connectionString))
                {
                    sqlcon.Open();
                    string selectquery = "SELECT * FROM SignUp WHERE NIC= '" + nic + "' AND Password = '" + password + "'";
                    SqlCommand cmd = new SqlCommand(selectquery, sqlcon);
                    SqlDataReader dr = cmd.ExecuteReader();
                    
                    if (dr.Read())
                    {
                    sqlcon.Close();
                        Response.Redirect("Menu.aspx", false);
                    sqlcon.Open();
                    SqlCommand user_data;
                    SqlDataReader datareader;
                    string UN;
                    


                        UN = "SELECT UserName FROM SignUp WHERE NIC = '"+ nic +"' ";
                        user_data = new SqlCommand(UN, sqlcon);

                        datareader = user_data.ExecuteReader();
                    if (datareader.Read())
                    {
                        Session["name"] = datareader[0].ToString();
                        Session["user-nic"] = nic;
                    }
                    else
                    {
                        Response.Write("<script LANGUAGE='JavaScript'>alert('No data Returned.')</script>");
                    }
                      datareader.Close();
                      user_data.Dispose();
                      sqlcon.Close();

                    }

                    else
                    {
                        Response.Write("<script LANGUAGE='JavaScript'>alert('Please signup first.')</script>");
                    
                }

                }
               
            

           
}          
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx",false);
        }
    }
}