<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketPrice.aspx.cs" Inherits="WebApplication2.TicketPrice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #Label1{
           font-size:30px;
           color:blue;
           
        }

        #TextBox1{
            border-style:none;
            background-color:cornflowerblue;
            margin-top:30px;
           
        }

        .price{
            background-color:cornflowerblue;
            border-radius:10px;
        }

        body{
            margin-top:10%;
            height: 387px;
        }
        #form1 {
            height: 387px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <div>
                <br />
              <asp:Label ID="Label1" runat="server" Text="Total Price"></asp:Label>
                <br />
                <br />
                <br />
           </div>
        
        <div style="height: 140px; width: 335px; margin-top: 0px;" class="price">
            <asp:TextBox ID="TextBox1" runat="server" Height="75px" Width="175px" Font-Bold="True" Font-Size="XX-Large" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </div>
            <br /><br /><br />
    
            <div>
        <asp:Button ID="Button4" runat="server" Font-Bold="True" ForeColor="White" Height="30px" OnClick="Button4_Click" Text="BACK" Width="90px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="White" Height="30px" OnClick="Button3_Click" Text="OK" Width="90px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
          </div>
        </center>
            </form>
</body>
</html>
