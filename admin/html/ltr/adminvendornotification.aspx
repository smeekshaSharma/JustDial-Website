<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Just Dial | Admin DashBoard</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim fname As String
    Dim lname As String
  
    Protected Sub Button1_Click1(ByVal sender As Object, ByVal e As System.EventArgs)
        If t1.Text = "" Or t2.Text = "" Or t3.Text = "" Or d1.Text = "Select Any One" Then
       
            MsgBox("Please Fill All Fields")
            Exit Sub
        End If
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*)from vconfirm where vtype='" & d1.Text & "' and ns='" & t2.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("Confirmation Already Exist")
            conn.Close()
        Else
            sql = "insert into vconfirm values('" & t1.Text & "','" & d1.Text & "','" & t2.Text & "','" & t3.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("Your Confirmation has been saved")
            conn.Close()
            d1.Text = ""
            t2.Text = ""
            t3.Text = ""
        End If
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*)from vconfirm where vtype='" & d1.Text & "' and ns='" & t2.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select cd from vconfirm where vtype='" & d1.Text & "' and ns='" & t2.Text & "'")
            command.Connection = conn
            t1.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select description from vconfirm where vtype='" & d1.Text & "' and ns='" & t2.Text & "'")
            command.Connection = conn
            t3.Text = command.ExecuteScalar
            conn.Close()
        Else
            MsgBox("The Detail Not found")
            conn.Close()
        End If
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("Delete from vconfirm where vtype='" & d1.Text & "' and ns='" & t2.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        MsgBox(" Your Confirmation Has Been Deleted")
        d1.Text = ""
        t2.Text = ""
        t3.Text =""
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("update vconfirm set cd='" & t1.Text & "', description='" & t3.Text & "' where vtype='" & d1.Text & "' and ns='" & t2.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        MsgBox(" Your Confirmation Has Been Updated")
        d1.Text = ""
        t2.Text = ""
        t3.Text = ""
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        t1.Text = Format(Now, "dd/MM/yyyy")
        t1.Enabled = False
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select uname from logintemp")
        command.Connection = conn
        Label1.Text = command.ExecuteScalar
        If Label1.Text = "Null" Then
            MsgBox("Login Your Account")
            Response.Redirect("adminlogin.aspx")
        Else
            command = New Data.SqlClient.SqlCommand(" select fname  from regis where email='" & Label1.Text & "'")
            command.Connection = conn
            fname = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand(" select lname  from regis where email='" & Label1.Text & "'")
            command.Connection = conn
            lname = command.ExecuteScalar
            Label2.Text = "Welcome: " & fname & " " & lname
            
        End If
        conn.Close()
        
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from logintemp")
        command.Connection = conn
        command.ExecuteScalar()
        sql = "insert into logintemp values('" & "Null" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
       
        Response.Redirect("adminlogin.aspx")
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:659px;
	z-index:1;
	left: 0;
	top: 0;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:63px;
	z-index:1;
	background-color: #FFFFFF;
}
#apDiv3 {
	position:absolute;
	width:18%;
	height:517px;
	z-index:2;
	top: 51px;
	left: 0;
	background-color: #141619;
}
.style1 {color: #FFFFFF}
.style3 {font-family: Calibri}
.style4 {font-size: 18px}
.style5 {font-size: 20px}
.style6 {color: #FFFFFF; font-size: 20px; }
.style8 {color: #FFFFFF; font-size: 18px; font-family: Calibri; }
#apDiv4 {
	position:absolute;
	width:82%;
	height:516px;
	z-index:3;
	left: 240px;
	top: 51px;
	background-color: #eeeeee;
}
#apDiv5 {
	position:absolute;
	width:80%;
	height:57px;
	z-index:1;
	top: 0px;
	left: 51px;
}
.style9 {color: #141619}
#apDiv6 {
	position:absolute;
	width:80%;
	height:402px;
	z-index:2;
	left: 51px;
	top: 62px;
	background-color: #FFFFFF;
}
.style10 {font-size: 16; }
#apDiv7 {
	position:absolute;
	width:25px;
	height:25px;
	z-index:2;
	left: 56px;
	top: 222px;
}
#apDiv8 {
	position:absolute;
	width:25px;
	height:25px;
	z-index:2;
	left: 44px;
	top: 26px;
}
a {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #EEEEEE;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #EEEEEE;
}
a:hover {
	text-decoration: underline;
	color: #FFFFCC;
}
a:active {
	text-decoration: none;
	color: #FFFFCC;
}
.style14 {color: #EF3C27}
.style15 {color: #999999}
.style18 {color: #999999; font-size: 18px; font-family: Calibri; font-style: italic; }
.style19 {	color: #EF3C27;
	font-size: 20px;
}
.style12 {	font-size: 36px;
	font-weight: bold;
	color: #FFFFFF;
}
.style23 {color: #FE9D1E; font-weight: bold; }
#apDiv9 {	position:absolute;
	width:100%;
	height:36px;
	z-index:4;
	left: 0;
	top: 611px;
}
    -->
</style>
</head>

<body>
    <form id="form1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" height="52" border="0">
      <tr>
        <th width="3%" bgcolor="#FFFFFF" scope="row">&nbsp;</th>
        <td width="15%" bgcolor="#EF3C27"><span class="style12">Just Dial</span></td>
        <td width="45%">&nbsp;</td>
        <td width="37%">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div id="apDiv3">
    <table width="100%" border="0">
      <tr>
        <th height="46" colspan="2" bgcolor="#EEEEEE" scope="row"><div align="center"><span class="style5 style14">Admin Dashboard</span></div></th>
      </tr>
      <tr>
        <th width="16%" scope="row"><img src="../../../images/vendorconfirm.png" /></th>
        <td width="84%"><a href="adminvendorconfirm.aspx"><span class="style15 style4 hide-menu style3"><em>Vendor Confirm</em></span></a></td>
      </tr>
      <tr>
        <th colspan="2" scope="row"><hr /></th>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/Vendorplan.png" /></th>
        <td><a href="adminplan.aspx"><span class="style1"><span class="style15 style4 hide-menu style3"><em>Vendor Plan</em></span></span></a></td>
      </tr>
      <tr>
        <th colspan="2" scope="row"><hr /></th>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/faq1.png" /></th>
        <td><a href="adminfaq.aspx"><span class="style1"><span class="style15 style4 hide-menu style3"><em>FAQ</em></span></span></a></td>
      </tr>
      <tr>
        <th colspan="2" scope="row"><hr /></th>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/vendornoti.png" /></th>
        <td><a href="adminvendornotification.aspx"><span class="style1"><span class="style15 style4 hide-menu style3"><em>Vendor Notification</em></span></span></a></td>
      </tr>
      <tr>
        <th colspan="2" scope="row"><hr /></th>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/clientnoti.png" /></th>
        <td><a href="adminvendornotification.aspx"><span class="style1"><span class="style15 style4 hide-menu style3"><em>Client Notification</em></span></span></a></td>
      </tr>
      <tr>
        <th colspan="2" scope="row"><hr /></th>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/adminreg.png" style="height: 17px" /></th>
        <td><a href="adminregistration.aspx"><span class="style1"><span class="style15 hide-menu style4 style3"><em>Admin Registration</em></span></span></a></td>
      </tr>
      <tr>
        <th height="40" colspan="2" bgcolor="#EEEEEE" scope="row"><div align="center"><span class="style19">Reports</span></div></th>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/vendorreg.png" /></th>
        <td><a href="vendorregistration.aspx"><span class="style1"><span class="style15 style3 style4 hide-menu"><em>Vendor Registration</em></span></span></a></td>
      </tr>
      <tr>
        <th colspan="2" scope="row"><hr /></th>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/feedback.png" /></th>
        <td><a href="feedback.aspx"><span class="style1"><span class="style15 style3 style4 hide-menu"><em>FeedBack</em></span></span></a></td>
      </tr>
      <tr>
        <th colspan="2" scope="row"><hr /></th>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/complaint.png" /></th>
        <td><a href="complaint.aspx"><span class="style18">Complaint</span></a></td>
      </tr>
      <tr>
        <th colspan="2" scope="row"><hr /></th>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/clientservices.png" /></th>
        <td><a href="clientservices.aspx"><span class="style18">Client Services</span></a></td>
      </tr>
      <tr>
        <th colspan="2" scope="row"><hr />
            <span class="style1"></span></th>
      </tr>
    </table>
  </div>
  <div id="apDiv4">
    <div id="apDiv5">
      <table width="100%" border="0" style="margin-bottom: 0px">
        <tr>
          <th scope="row"><div align="left"><span class="style5 style9">Dashboard</span></div></th>
          <th scope="row">
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </th>
          <th scope="row">
              <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FF3300" 
                  onclick="LinkButton1_Click">Logout</asp:LinkButton>
            </th>
        </tr>
      </table>
    </div>
    <div id="apDiv6">
      <table width="99%" height="403" border="0">
        <tr>
          <th width="23%" scope="row"><div align="left">Current Date</div></th>
          <td width="70%">
              <asp:TextBox ID="t1" runat="server"></asp:TextBox>
            </td>
          <td width="7%">&nbsp;</td>
        </tr>
        <tr>
          <th scope="row"><div align="left" class="style10">Vendor Type</div></th>
          <td>
            <asp:DropDownList ID="d1" runat="server">
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem>Air Tickets</asp:ListItem>
                <asp:ListItem>Anything On Hire</asp:ListItem>
                <asp:ListItem>Apply for Loan</asp:ListItem>
                <asp:ListItem>Auto Care</asp:ListItem>
                <asp:ListItem>Automobile</asp:ListItem>
                <asp:ListItem>B2B</asp:ListItem>
                <asp:ListItem>Baby Care</asp:ListItem>
                <asp:ListItem>Banquets</asp:ListItem>
                <asp:ListItem>Bills &amp; Recharge</asp:ListItem>
                <asp:ListItem>Book Hotel</asp:ListItem>
                <asp:ListItem>Books</asp:ListItem>
                <asp:ListItem>Bus</asp:ListItem>
                <asp:ListItem>Cabs &amp; Car Rentals</asp:ListItem>
                <asp:ListItem>Caterers</asp:ListItem>
                <asp:ListItem>Chemists</asp:ListItem>
                <asp:ListItem>Civil Constructors</asp:ListItem>
                <asp:ListItem>Courier</asp:ListItem>
                <asp:ListItem>Daily Needs</asp:ListItem>
                <asp:ListItem>Dance &amp; Music</asp:ListItem>
                <asp:ListItem>Doctor</asp:ListItem>
                <asp:ListItem>Education</asp:ListItem>
                <asp:ListItem>Emergency</asp:ListItem>
                <asp:ListItem>Entertainment</asp:ListItem>
                <asp:ListItem>Event Organizer</asp:ListItem>
                <asp:ListItem>Fitness</asp:ListItem>
                <asp:ListItem>Flights</asp:ListItem>
                <asp:ListItem>Foreign Exchange</asp:ListItem>
                <asp:ListItem>Flowers</asp:ListItem>
                <asp:ListItem>Home Decor</asp:ListItem>
                <asp:ListItem>Home Improvements</asp:ListItem>
                <asp:ListItem>Hospitals</asp:ListItem>
                <asp:ListItem>Hotels</asp:ListItem>
                <asp:ListItem>House Keeping</asp:ListItem>
                <asp:ListItem>Industrial Products</asp:ListItem>
                <asp:ListItem>Insurance</asp:ListItem>
                <asp:ListItem>Interior Designer</asp:ListItem>
                <asp:ListItem>Internet SIM Card</asp:ListItem>
                <asp:ListItem>Internet</asp:ListItem>
                <asp:ListItem>Jobs</asp:ListItem>
                <asp:ListItem>Jewellery</asp:ListItem>
                <asp:ListItem>Labs</asp:ListItem>
                <asp:ListItem>Language Classes</asp:ListItem>
                <asp:ListItem>Loan &amp; Credit Card</asp:ListItem>
                <asp:ListItem>Medical</asp:ListItem>
                <asp:ListItem>Modular Kitchen</asp:ListItem>
                <asp:ListItem>Movies</asp:ListItem>
                <asp:ListItem>On Demand Services</asp:ListItem>
                <asp:ListItem>Packet and Movers</asp:ListItem>
                <asp:ListItem>Party</asp:ListItem>
                <asp:ListItem>Personal Care</asp:ListItem>
                <asp:ListItem>Pest Control</asp:ListItem>
                <asp:ListItem>Pet and Pet Care</asp:ListItem>
                <asp:ListItem>Play School</asp:ListItem>
                <asp:ListItem>Real Estate</asp:ListItem>
                <asp:ListItem>Repairs</asp:ListItem>
                <asp:ListItem>Restaurants</asp:ListItem>
                <asp:ListItem>Shop Online</asp:ListItem>
                <asp:ListItem>Security Services</asp:ListItem>
                <asp:ListItem>Shopping</asp:ListItem>
                <asp:ListItem>Sports Coach </asp:ListItem>
                <asp:ListItem>Sports Goods</asp:ListItem>
                <asp:ListItem>Train</asp:ListItem>
                <asp:ListItem>Training Institute</asp:ListItem>
                <asp:ListItem>Transporters</asp:ListItem>
                <asp:ListItem>Travel</asp:ListItem>
                <asp:ListItem>Wedding</asp:ListItem>
                <asp:ListItem>Wine Shop</asp:ListItem>
            </asp:DropDownList>
            </td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th scope="row"><div align="left" class="style10">Notification Subject</div></th>
          <td>
              <asp:TextBox ID="t2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
          <td>&nbsp;</td>
        </tr>
        
        
        <tr>
          <th height="74" scope="row"><div align="left">Description</div></th>
          <td>
              <asp:TextBox ID="t3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th scope="row">
              <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click1" />
            </th>
          <td>
              <asp:Button ID="Button2" runat="server" Text="Search" onclick="Button2_Click" />
            </td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th scope="row">
              <asp:Button ID="Button4" runat="server" Text="Delete " 
                  onclick="Button4_Click" />
            </th>
          <td>
              <asp:Button ID="Button3" runat="server" Text="Update" onclick="Button3_Click" />
            </td>
          <td>&nbsp;</td>
        </tr>
        </table>
    </div>
  </div>
  <div id="apDiv9">
    <table width="1320" height="35" border="0">
      <tr>
        <td width="652"><span class="style23">This website is designed &amp; developed by Simran Madaan </span></td>
        <td width="652"><div align="right"><span class="style23">All Rights Reserved @ JustDial</span></div></td>
      </tr>
    </table>
  </div>
</div>
</form>
</body>
</html>
