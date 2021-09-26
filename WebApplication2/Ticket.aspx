<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ticket.aspx.cs" Inherits="WebApplication2.Ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

         body{background-image:url("train3new.jpg");
             background-repeat:no-repeat;
             background-attachment:fixed;
             background-position:center;
             background-size:cover;
             position:relative;
        }

        #Label1{
            font-size:28px;
            color:aquamarine;
            
        }
        #form1 {
            height: 668px;
            margin-top:30px;
        }
        

        #TrainNo,#Date,#Time,#From,#To,#Class,#NOP,#NIC{
            border-style:none;
            background-color:aliceblue;
            
        }

        .topic{
            text-align:center;
        }

       

        .container{
            text-align:center;
            padding:50px;
            width:50%;
            margin:25px auto 10px auto;
            border-style:solid;
            border-color:darkslateblue;
            box-shadow:inset;
            background-color:aliceblue;
            font-family:'Times New Roman', Times, serif;
            font-size:18px;
            font-weight:bold;
            
           
        }

    </style>
</head>
<body style="height: 709px; top: 0px; left: 0px;">
    <form id="form1" runat="server">
        <div class="topic" style="height: 78px">
          
               <br />
               <asp:Label ID="Label1" runat="server" Text="Your Reservation Details"></asp:Label>
        </div>

        <div class="container">
            
       <asp:Label ID="Label2" runat="server" Text="Train No : "></asp:Label>
                <asp:TextBox ID="TrainNo" runat="server" style="margin-left: 89px"></asp:TextBox>
        
            <br />
            <br />
        
       <asp:Label ID="Label4" runat="server" Text="Date : "></asp:Label>
            <asp:TextBox ID="Date" runat="server" style="margin-left: 107px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Time :"></asp:Label>
            <asp:TextBox ID="Time" runat="server" style="margin-left: 110px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="From :"></asp:Label>
            <asp:TextBox ID="From" runat="server" style="margin-left: 108px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="To :"></asp:Label>
            <asp:TextBox ID="To" runat="server" OnTextChanged="TextBox5_TextChanged" style="margin-left: 125px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Class :"></asp:Label>
            <asp:TextBox ID="Class" runat="server" style="margin-left: 107px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="No of Passengers :"></asp:Label>
            <asp:TextBox ID="NOP" runat="server" style="margin-left: 32px"></asp:TextBox>
            <br />
            <br />
         <asp:Label ID="Label9" runat="server" Text="NIC :"></asp:Label>
         <asp:TextBox ID="NIC" runat="server" style="margin-left: 109px"></asp:TextBox>
        <br />
        <br />
     </div>
        <br />
        <br />
      
       <center><asp:Button ID="Button1" runat="server" Text="OK" Font-Bold="True" ForeColor="White" Height="30px" Width="90px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" OnClick="Button1_Click"/></center> 
    </form>
</body>
</html>
