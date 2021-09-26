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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if(IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asuni\Desktop\WebApplication2\WebApplication2\App_Data\RailwayDB.mdf;Integrated Security=True");
                con.Open();
                string checkuser = "select count(*) from SignUp where NIC = '" + NIC.Text + "' ";
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
               

                if(temp==1)
                {
                    Response.Write("User Already Exists.");
                }

                con.Close();
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            /*if (NIC.Text.Length == 10 || NIC.Text.Length == 12)
            {
                args.IsValid = true;

            }
            else
            {
                args.IsValid = false;
        
            }*/
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            NIC.Text = " ";
            UName.Text = " ";
            email.Text = " ";
            cardNo.Text = " ";
            Password.Text = " ";
            RePass.Text = " ";
        }



        protected void CreateAcc_Click(object sender, EventArgs e)
        {


            try
            {
                string PW = Password.Text;
                //String Generated_Password = encryption(PW);
                /*Guid newGUID = Guid.NewGuid();*/

                if (NIC.Text.Length == 10 || NIC.Text.Length == 12)
                {

                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asuni\Desktop\WebApplication2\WebApplication2\App_Data\RailwayDB.mdf;Integrated Security=True");
                    con.Open();
                    string insertQuery = "insert into SignUp(NIC,UserName,Email,CreditCardNo,Password) values (@nic,@username,@email,@creditcardno,@password)";
                    SqlCommand com = new SqlCommand(insertQuery, con);

                    com.Parameters.AddWithValue("@nic", NIC.Text);
                    com.Parameters.AddWithValue("@username", UName.Text);
                    com.Parameters.AddWithValue("@email", email.Text);
                    com.Parameters.AddWithValue("@creditcardno", cardNo.Text);
                    com.Parameters.AddWithValue("@password", PW);

                    com.ExecuteNonQuery();
                    con.Close();

                   /* Response.Write("<script LANGUAGE='JavaScript'>alert('Registration was successful.')</script>");*/
                   Response.Redirect("LogIn.aspx", false);

                }

                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid NIC')</script>");
                    NIC.Text = " ";
                    UName.Text = " ";
                    email.Text = " ";
                    cardNo.Text = " ";
                    Password.Text = " ";
                    RePass.Text = " ";
                }

            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

       public string encryption (string entered_password)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encrypt;

            UTF8Encoding encode = new UTF8Encoding();
            encrypt = md5.ComputeHash(encode.GetBytes(entered_password));
            StringBuilder encryptData = new StringBuilder();

            for(int rr=0; rr<encrypt.Length; rr++)
            {
                encryptData.Append(encrypt[rr].ToString());

            }

            return encryptData.ToString();



        }

        
       
        protected void Exit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx",false);
        }


       

       
    }

    internal class MessageBox
    {
    }
}
    
  
 