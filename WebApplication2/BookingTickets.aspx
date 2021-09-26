<%@ Page Language="C#" AutoEventWireup="true" Inherits="WebApplication2.BookingTickets" Codebehind="BookingTickets.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/pikaday.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <link href="css/triangle.css" rel="stylesheet" />
    <script src="pikaday.js"></script>
    <style type="text/css">


        input[type="text"] {
    margin: 0em 0 3em 0 ;
    padding: 0.5em;
}


        body{background-image:url("train3new.jpg");
             background-repeat:no-repeat;
             background-attachment:fixed;
             background-position:center;
             background-size:cover;
             position:relative;
        }
    
        .name{
            text-align:left;
        }

        #form1{
            margin-left:30%;
        }

        .ids{
            margin-left:20%;
        }

        .booking-buttons{
            display:inline-block;
            float:right;
            margin-right:20px;
        }

    </style>
</head>
<body>
   
    <form id="form1" runat="server">
            &nbsp;<br />
            <br />
            &nbsp;
            <br />
            <div style="margin-left: 148px; width: 373px;">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="35pt" ForeColor="#FFCCFF" Text="Booking Tickets" Font-Names="Century"></asp:Label>
            </div>
            <br />
            <br />
            <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="From :" Font-Names="Adobe Caslon Pro Bold"></asp:Label></div>
            </div>
        <br />
        <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:DropDownList ID="From" runat="server" Height="35px" Width="250px" BackColor="#CCCCCC">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>Anuradhapura</asp:ListItem>
                <asp:ListItem>Kandy</asp:ListItem>
                <asp:ListItem>Kurunegala</asp:ListItem>
                <asp:ListItem>Galle</asp:ListItem>
                <asp:ListItem>Kaluthara</asp:ListItem>
                
            </asp:DropDownList></div>
            </div>
        <br />
        <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="To :" Font-Names="Adobe Caslon Pro Bold"></asp:Label></div>
            </div>
        <br />
        <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:DropDownList ID="To" runat="server" Height="35px" Width="250px" BackColor="#CCCCCC">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>Gampaha</asp:ListItem>
                <asp:ListItem>Colombo Fort</asp:ListItem>
                <asp:ListItem>Jaffna</asp:ListItem>
                <asp:ListItem>Maradana</asp:ListItem>
                <asp:ListItem>Mathara</asp:ListItem>
               
            </asp:DropDownList></div>
            </div>
        <br />
        <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Date :" Font-Names="Adobe Caslon Pro Bold"></asp:Label></div>
            </div>
        <br />
        <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:TextBox ID="Date" runat="server" Height="16px" Width="231px" BackColor="#CCCCCC"></asp:TextBox></div>
            </div>
        <script type="text/javascript">
            var picker = new Pikaday(
                {
                    field: document.getElementById('TextBox1'),
                    firstDay: 1,
                    minDate: new Date('2018-01-01'),
                    maxDate: new Date('2025-12-31'),
                    yearRange: [2000, 2020],
                    numberOfMonths: 1,
                    theme: 'dark-theme'
                });
</script>
            <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Time :" Font-Names="Adobe Caslon Pro Bold"></asp:Label></div>
            </div>
            <br />
            <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:DropDownList ID="Time" runat="server" Height="35px" Width="250px" BackColor="#CCCCCC">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>0640</asp:ListItem>
                <asp:ListItem>0615</asp:ListItem>
                <asp:ListItem>0830</asp:ListItem>
                <asp:ListItem>0725</asp:ListItem>
                <asp:ListItem>1800</asp:ListItem>
            
            </asp:DropDownList>
                </div>
            </div>
            <br />
            <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Train No :" Font-Names="Adobe Caslon Pro Bold"></asp:Label></div>
            </div>
            <br />
            <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:DropDownList ID="TrainNo" runat="server" Height="35px" Width="250px" BackColor="#CCCCCC">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
                <asp:ListItem>1001</asp:ListItem>
                <asp:ListItem>1002</asp:ListItem>
                <asp:ListItem>1003</asp:ListItem>
                <asp:ListItem>1004</asp:ListItem>
            </asp:DropDownList>
                </div>
            </div>
            <br />
            <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Class :" Font-Names="Adobe Caslon Pro Bold"></asp:Label></div>
            </div>
            <br />
            <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:DropDownList ID="Class" runat="server" Height="35px" Width="250px" BackColor="#CCCCCC">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>First</asp:ListItem>
                <asp:ListItem>Second</asp:ListItem>
                <asp:ListItem>Third</asp:ListItem>
            </asp:DropDownList>
                </div>
            </div>
            <br />
            <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="No of Passengers :" Font-Names="Adobe Caslon Pro Bold"></asp:Label></div>
            </div>
            <br />
            <br />
            <div style="margin-left: 200px">
            <div class="name"><asp:DropDownList ID="NOP" runat="server" Height="35px" Width="250px" BackColor="#CCCCCC">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
            <div style="width: 100%; ">
                <asp:Button class="booking-buttons" ID="Back" runat="server" Font-Bold="True" ForeColor="White" Height="30px" OnClick="Back_Click" Text="BACK" Width="90px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
                <asp:Button class="booking-buttons" ID="Clear" runat="server" Font-Bold="True" ForeColor="White" Height="30px" OnClick="Clear_Click" Text="Clear" Width="90px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
                <asp:Button class="booking-buttons" ID="Next" runat="server" Font-Bold="True" ForeColor="White" Height="30px" OnClick="Next_Click" Text="NEXT" Width="90px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
             </div>
            <br />
        
    </form>
       
</body>
</html>
