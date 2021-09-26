using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class TicketPrice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingTickets.aspx",false);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ticket.aspx",false);
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
    
}