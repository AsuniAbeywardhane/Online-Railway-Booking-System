<%@ Page Language="C#" AutoEventWireup="true" Inherits="WebApplication2.signup" Codebehind="signup.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">

       
    
        body{background-image:url('train3new.jpg');
             background-repeat:no-repeat;
             background-attachment:fixed;
             background-position:center;
             background-size:cover;
             position:relative;
            
        }
        .container{
            margin-top:80px;
        }

        .details{
             text-align:center;
             margin-top:20px;
        }

        

</style>

    
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div>
           <center>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="35pt" ForeColor="#FFCCFF" Text="SIGN UP"></asp:Label>
            </center>
            <br />
        </div>
      <div class="details">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Enter NIC"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="NIC" runat="server" BackColor="#CCCCCC" Height="30px" Width="199px" required="Required"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Invalid" OnServerValidate="CustomValidator1_ServerValidate" Font-Size="Large" ForeColor="#CCCCFF">Invalid</asp:CustomValidator>
            <br />
            <br />
        
       
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Enter User Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UName" runat="server" BackColor="#CCCCCC" Height="30px" Width="199px" required="Required" ></asp:TextBox>
         <br /><br/>
          
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Enter Email"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="email" runat="server" BackColor="#CCCCCC" Height="30px" Width="199px" required="Required"></asp:TextBox>
             <br /><br/>
 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
              <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Enter credit card no"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
              <asp:TextBox ID="cardNo" runat="server" BackColor="#CCCCCC" Height="30px" Width="199px" ></asp:TextBox>
              <asp:Label ID="Label8" runat="server" Font-Size="Medium" ForeColor="#CCCCFF" Text="(Optional)"></asp:Label>
               <br /><br/>

            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Enter Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Password" runat="server" BackColor="#CCCCCC" Height="30px" Width="199px" required="Required"></asp:TextBox>
           <br /><br/>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Re-Enter Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="RePass" runat="server" BackColor="#CCCCCC" Height="30px" Width="199px" style="margin-left: 0px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="RePass" ErrorMessage="Re enter your password" required="Required" Font-Size="Large" ForeColor="#CCCCFF"></asp:CompareValidator>
        
            <br />
            <br />
            <br />
        
        <br />
        <br />
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Exit" runat="server" Font-Bold="True" ForeColor="White" Height="40px" OnClick="Exit_Click" Text="EXIT" Width="120px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Clear" runat="server" Font-Bold="True" ForeColor="White" Height="40px" OnClick="Clear_Click" Text="Clear" Width="120px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="CreateAcc" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="40px" Text="Create account" Width="161px" OnClick="CreateAcc_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
              </div>              
        </form>
        </div>
</body>
</html>
