<%@ Page Language="C#" AutoEventWireup="true" Inherits="WebApplication2.Payment" Codebehind="Payment.aspx.cs" %>

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
    margin: 0.5em 0 3em ;
    padding: 0.5em;
}
 body{background-image:url("train3new.jpg");
             background-repeat:no-repeat;
             background-attachment:fixed;
             background-position:center;
             background-size:cover;
             position:relative;
        }

   #form1{
       margin-left:30%;
            height: 988px;
        }
    </style>

</head>
<body style="height: 998px; top: 0px; left: 0px;">
    <form id="form1" runat="server">
        <div style="margin-left: 360px; width: 225px;" dir="ltr">
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="35pt" ForeColor="#FFCCFF" Text="Payment" Font-Names="Century"></asp:Label>
        &nbsp;<br />
        </div>
        <p style="margin-left: 120px">
            <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Credit card" OnCheckedChanged="RadioButton1_CheckedChanged" />
        </p>
        <p style="margin-left: 120px">
            <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Cash" />
        </p>
        <p style="margin-left: 120px">
            &nbsp;</p>
        <p style="margin-left: 120px">
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Card Number :" Font-Names="Adobe Caslon Pro Bold"></asp:Label>
        </p>
        <p style="margin-left: 120px">
            <asp:TextBox ID="TextBox7" runat="server" Height="16px" Width="231px" BackColor="#CCCCCC"></asp:TextBox>
        </p>
        <p style="margin-left: 120px">
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Name on Card :" Font-Names="Adobe Caslon Pro Bold"></asp:Label>
        </p>
        <p style="margin-left: 120px">
            <asp:TextBox ID="TextBox8" runat="server" Height="16px" Width="231px" BackColor="#CCCCCC"></asp:TextBox>
        </p>
        <p style="margin-left: 120px">
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="City :" Font-Names="Adobe Caslon Pro Bold"></asp:Label>
        </p>
        <p style="margin-left: 120px">
            <asp:TextBox ID="TextBox11" runat="server" Height="16px" Width="231px" BackColor="#CCCCCC" OnTextChanged="TextBox11_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-left: 120px">
            <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="Expiry Date :" Font-Names="Adobe Caslon Pro Bold"></asp:Label>
           
        </p>
        <p style="margin-left: 120px">
            <asp:TextBox ID="TextBox9" runat="server" Height="16px" Width="231px" BackColor="#CCCCCC"></asp:TextBox>
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
        </p>
        <p style="margin-left: 120px">
            <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCFFFF" Text="CVV:" Font-Names="Adobe Caslon Pro Bold"></asp:Label>
        </p>
        <p style="margin-left: 120px">
            <asp:TextBox ID="TextBox10" runat="server" Height="16px" Width="231px" BackColor="#CCCCCC"></asp:TextBox>
        </p>
        <p style="width: 383px; margin-left: 447px">
            <asp:Button ID="Button5" runat="server" Font-Bold="True" ForeColor="White" Height="31px" OnClick="Button1_Click" Text="BACK" Width="89px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px; margin-top: 0px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Font-Bold="True" ForeColor="White" Height="31px" OnClick="Button1_Click" Text="ENTER" Width="90px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
        </p>
    </form>
</body>
</html>
