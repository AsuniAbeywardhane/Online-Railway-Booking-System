<%@ Page Language="C#" AutoEventWireup="true" Inherits="WebApplication2.CancellingTickets" Codebehind="CancellingTickets.aspx.cs" %>

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
    
        .name{
            text-align:left;
        }

        #form1{
            margin-left:20px;
        }

        .ids{
            margin-left:20%;
        }

        #GridView1{
            background-color:antiquewhite;
        }

    </style>
</head>
<body>
   
    <form id="form1" runat="server">
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="log" runat="server" Font-Bold="True" Font-Size="small" ForeColor="#CCFFFF" Text="Logged In : "></asp:Label>
        <asp:Label ID="uname" runat="server" Font-Bold="True" Font-Size="small" ForeColor="#CCFFFF" Text=""></asp:Label>
            <br />
            &nbsp;
            <br />
    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="35pt" ForeColor="#FFCCFF" Text="Cancelling Tickets" Font-Names="Century"></asp:Label>
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID"  CellPadding="5" CellSpacing="2" Height="200px" HorizontalAlign="Center" Width="699px" >
                    <Columns>
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                        <asp:BoundField DataField="TrainNo" HeaderText="TrainNo" SortExpression="TrainNo" />
                        <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
                        <asp:BoundField DataField="To" HeaderText="To" SortExpression="To" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                        <asp:BoundField DataField="NoOfPassengers" HeaderText="NoOfPassengers" SortExpression="NoOfPassengers" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                
                                <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                  
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_Railway %>" ConflictDetection="CompareAllValues"
                    DeleteCommand="DELETE FROM BookingTable WHERE OrderID = Row.Cells[0];">
                    
                    <%-- DeleteCommand="DELETE FROM [BookingTable] WHERE [OrderID] = @original_OrderID AND (([NIC] = @original_NIC) OR ([NIC] IS NULL AND @original_NIC IS NULL)) AND (([TrainNo] = @original_TrainNo) OR ([TrainNo] IS NULL AND @original_TrainNo IS NULL)) AND (([From] = @original_From) OR ([From] IS NULL AND @original_From IS NULL)) AND (([To] = @original_To) OR ([To] IS NULL AND @original_To IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([NoOfPassengers] = @original_NoOfPassengers) OR ([NoOfPassengers] IS NULL AND @original_NoOfPassengers IS NULL))" 
                    InsertCommand="INSERT INTO [BookingTable] ([NIC], [TrainNo], [From], [To], [Date], [Time], [Class], [NoOfPassengers]) VALUES (@NIC, @TrainNo, @From, @To, @Date, @Time, @Class, @NoOfPassengers)" OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [BookingTable]" 
                    UpdateCommand="UPDATE [BookingTable] SET [NIC] = @NIC, [TrainNo] = @TrainNo, [From] = @From, [To] = @To, [Date] = @Date, [Time] = @Time, [Class] = @Class, [NoOfPassengers] = @NoOfPassengers WHERE [OrderID] = @original_OrderID AND (([NIC] = @original_NIC) OR ([NIC] IS NULL AND @original_NIC IS NULL)) AND (([TrainNo] = @original_TrainNo) OR ([TrainNo] IS NULL AND @original_TrainNo IS NULL)) AND (([From] = @original_From) OR ([From] IS NULL AND @original_From IS NULL)) AND (([To] = @original_To) OR ([To] IS NULL AND @original_To IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([NoOfPassengers] = @original_NoOfPassengers) OR ([NoOfPassengers] IS NULL AND @original_NoOfPassengers IS NULL))" 
                    <DeleteParameters>
                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                        <asp:Parameter Name="original_NIC" Type="String" />
                        <asp:Parameter Name="original_TrainNo" Type="String" />
                        <asp:Parameter Name="original_From" Type="String" />
                        <asp:Parameter Name="original_To" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Date" />
                        <asp:Parameter DbType="Time" Name="original_Time" />
                        <asp:Parameter Name="original_Class" Type="String" />
                        <asp:Parameter Name="original_NoOfPassengers" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NIC" Type="String" />
                        <asp:Parameter Name="TrainNo" Type="String" />
                        <asp:Parameter Name="From" Type="String" />
                        <asp:Parameter Name="To" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="NoOfPassengers" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NIC" Type="String" />
                        <asp:Parameter Name="TrainNo" Type="String" />
                        <asp:Parameter Name="From" Type="String" />
                        <asp:Parameter Name="To" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="NoOfPassengers" Type="Int32" />
                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                        <asp:Parameter Name="original_NIC" Type="String" />
                        <asp:Parameter Name="original_TrainNo" Type="String" />
                        <asp:Parameter Name="original_From" Type="String" />
                        <asp:Parameter Name="original_To" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Date" />
                        <asp:Parameter DbType="Time" Name="original_Time" />
                        <asp:Parameter Name="original_Class" Type="String" />
                        <asp:Parameter Name="original_NoOfPassengers" Type="Int32" />
                    </UpdateParameters>--%>
                  

            </asp:SqlDataSource>
         
            <br />
            <br />
            <br />
            <br />
           
        
            <div style="width: 269px; margin-left: 482px; margin-top: 11px">
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Font-Bold="True" ForeColor="White" Height="30px" OnClick="Button4_Click" Text="BACK" Width="90px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Font-Bold="True" ForeColor="White" Height="30px" OnClick="Button5_Click" Text="CANCEL" Width="90px" BackColor="#009999" Font-Size="Large" style="margin-left: 0px" />
             </div>
        
    </form>
       
</body>
</html>
