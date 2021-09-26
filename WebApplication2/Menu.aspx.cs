using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Timetable.aspx",false);
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            Response.Redirect("BookingTickets.aspx",false);
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            Response.Redirect("CancellingTickets.aspx",false);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx",false);
        }
    }
}