<%@ Page Language="C#" AutoEventWireup="true" Inherits="WebApplication2.Welcome" Codebehind="Welcome.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <style type="text/css">

       
    
        body{background-image:url('train.jpg');
             
             background-repeat:no-repeat;
             background-attachment:fixed;
             background-position:center;
             background-size:cover;
             position:relative;
            top: 2px;
            left: 0px;
        }

        
        
        .welcome-title{
            text-align:center;
            margin-top:50px;

        }
    
        .welcome-btns{
            text-align:center;
            margin-top:125px;
        }

        #Button2:hover{
            cursor:pointer;
            color:crimson;
        }

         #Button3:hover{
            cursor:pointer;
            background-color:green;
        }
</style>
</head>
<body>
    <form id="form1" runat="server">
     
           
            <div class="welcome-title">
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bodoni Bd BT" Font-Size="60pt" ForeColor="#FFFF99" Text="Welcome"></asp:Label>
                 <br />
                 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Bodoni Bd BT" Font-Size="60pt" ForeColor="#FFFF99" Text="to"></asp:Label>
                 <br />
                 <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Bodoni Bd BT" Font-Size="60pt" ForeColor="#FFFF99" Text="Sri Lanka      Railways"></asp:Label>
           
            </div> 
            <br />
            <br />          
           
            <div class="welcome-btns">
            <asp:Button ID="Button3" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="40px" Text="SIGN UP" Width="120px" OnClick="Button3_Click" style="margin-left: 94px" />
            
            <asp:Button ID="Button2" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="40px" Text="LOG IN" Width="120px" OnClick="Button2_Click" style="margin-left: 267px" />
            </div>
          
            
               
            
    </form>
</body>
</html>
