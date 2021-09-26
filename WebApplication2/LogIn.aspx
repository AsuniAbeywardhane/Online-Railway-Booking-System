<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="WebApplication2.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body{background-image:url('train3new.jpg');
             background-repeat:no-repeat;
             background-attachment:fixed;
             background-position:center;
             background-size:cover;
             position:relative;
            top: 82px;
            left: 426px;
            height: 522px;
        }

        .link a{
            color:#6699FF;
        }

        .link a:hover{
            color:aqua;

        }
    </style>

   
</head>
<body>
    
    <form id="form1" runat="server" aria-atomic="True" submitdisabledcontrols="True">
        
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p style="margin-left: 320px; width: 234px;">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="35pt" ForeColor="#FFCCFF" Text="LOG IN"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 120px">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Enter NIC" required="Required"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" Height="30px" Width="199px"></asp:TextBox>
        </p>
        <p style="margin-left: 120px">
            &nbsp;</p>
        <p style="margin-left: 120px">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Enter Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCCC" Height="30px" style="margin-left: 58px" Width="200px" required="Required"></asp:TextBox>
        </p>
        <p style="margin-left: 120px">
            &nbsp;</p>
        <p style="margin-left: 200px">
            <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Medium" ForeColor="White" Text="Remember me" />
        </p>
        <p style="margin-left: 200px">
            &nbsp;<asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="White" Height="40px" OnClick="Button3_Click" Text="EXIT" Width="120px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#009999" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button2_Click" Text="LOG IN" Width="120px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="margin-left: 200px">
            <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Don't have an account?  " Font-Size="Large"></asp:Label>
            <span class="link"><a href="signup.aspx"><asp:Label ID="Label5" runat="server" Text="Sign Up" Font-Size="Large" Font-Bold="True"></asp:Label></a></span>
        </p>
    </form>
</body>
</html>
