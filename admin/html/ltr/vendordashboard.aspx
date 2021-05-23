<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Human Press | Admin DashBoard</title>
<script runat="server">

    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim pass As String
    Dim fname As String
    Dim lname As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
       
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        
        command = New Data.SqlClient.SqlCommand("select username from login")
        command.Connection = conn
        Label1.Text = command.ExecuteScalar
        If Label1.Text = "Null" Then
            MsgBox("Login Your Account")
            Response.Redirect("login.aspx")
        Else
            
            
            command = New Data.SqlClient.SqlCommand(" select fname from detail where bemail='" & Label1.Text & "'")
            command.Connection = conn
            fname = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand(" select lname from detail where bemail='" & Label1.Text & "'")
            command.Connection = conn
            lname = command.ExecuteScalar
            Label2.Text = "Welcome: " & fname & " " & lname
            command = New Data.SqlClient.SqlCommand(" select bcategory from detail where bemail='" & Label1.Text & "'")
            command.Connection = conn
            Label3.Text = command.ExecuteScalar
            conn.Close()
        End If
       
        
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from login")
        command.Connection = conn
        command.ExecuteScalar()
        sql = "insert into login values('" & "Null" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
        Response.Redirect("login.aspx")
        conn.Close()
        
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:649px;
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
	width:265px;
	height:517px;
	z-index:2;
	top: 63px;
	left: 0;
	background-color: #141619;
}
.style5 {font-size: 20px}
#apDiv4 {
	position:absolute;
	width:82%;
	height:516px;
	z-index:3;
	left: 240px;
	top: 64px;
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
	height:465px;
	z-index:2;
	left: 52px;
	top: 52px;
	background-color: #FFFFFF;
}
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
	left: 30px;
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
.style11 {color: #FFFFFF; font-weight: bold; }
.style23 {color: #FE9D1E; font-weight: bold; }
#apDiv9 {
	position:absolute;
	width:100%;
	height:36px;
	z-index:4;
	left: -4px;
	top: 537px;
}
.style16 {color: #EF3C27}
.style15 {font-size: 36px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" height="52" border="0">
      <tr>
        <th width="3%" bgcolor="#FFFFFF" scope="row">&nbsp;</th>
        <td width="15%" bgcolor="#EF3C27"><span class="style15">Just Dial</span></td>
        <td width="45%">&nbsp;</td>
        <td width="37%">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div id="apDiv3">
    <div id="apDiv9">
      <table width="1320" height="35" border="0">
        <tr>
          <td width="652"><span class="style23">This website is designed &amp; developed by Simran Madaan </span></td>
          <td width="652"><div align="right"><span class="style23">All Rights Reserved @ JustDial</span></div></td>
        </tr>
      </table>
    </div>
    <table width="100%" border="0">
      <tr>
        <th colspan="2" bgcolor="#141619" scope="row">&nbsp;</th>
      </tr>
      <tr>
        <th height="33" colspan="2" bgcolor="#EEEEEE" scope="row"><div align="center"><span class="style5 style16">Dashboard</span></div></th>
      </tr>
      <tr>
        <th width="16%" scope="row"><img src="../../../images/vendorconfirm.png" /></th>
        <td width="84%"><a href="vendordashboard.aspx"><span class="style11">Home</span></a></td>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/vendornoti.png" alt="" width="25" /></th>
        <td><a href="vendorpayment.aspx"><span class="style11">Plan Payment</span></a></td>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/Vendorplan.png" alt="" /></th>
        <td><a href="vendorcomplaintrequest.aspx"><span class="style11">Complaint Request</span></a></td>
      </tr>
      <tr>
        <th scope="row"><img src="h.png" width="28" height="25" /></th>
        <td><a href="vendorcomplaintfeedback.aspx"><span class="style11">Complaint Feedback</span></a></td>
      </tr>
      <tr>
        <th scope="row"><img src="../../../images/clientnoti.png" /></th>
        <td><a href="vendorNotifications.aspx"><span class="style11">Notification</span></a></td>
      </tr>
      <tr>
        <th height="27" scope="row">&nbsp;</th>
        <td><a href="vendorgallery.aspx"><span class="style11">Gallery</span></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv4">
    <div id="apDiv5">
      <table width="100%" border="0">
        <tr>
          <th scope="row"><div align="left"><span class="style5 style9">Vendor Dashboard</span></div></th>
        </tr>
      </table>
    </div>
    <div id="apDiv6">    
      <table width="100%" border="0">
        <tr>
          <th scope="row">
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </th>
          <td>
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <th height="26" scope="row">&nbsp;</th>
          <td>
              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
          <td>
              <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" 
                  onclick="LinkButton1_Click">Logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
          <th colspan="3" scope="row"><hr /></th>
        </tr>
        <tr>
          <th colspan="3" scope="row"><h2 align="left" class="style16" id="mntl-sc-block_1-0"><u>What Is a Vendor?</u></h2>
            <div id="mntl-sc-block_1-0-1">
              <p align="left">A vendor is a party in the supply chain that makes goods and services available to companies or consumers. The term &quot;vendor&quot; is typically used to describe the entity that is paid for goods that are provided, rather than the manufacturer of the goods itself. However, it is possible for a vendor to operate as both a supplier (or seller) of goods and a manufacturer.</p>
            </div>
            <h2 align="left" class="style16" id="mntl-sc-block_1-0-3"><u>How a Vendor Works?</u></h2>
            <div id="mntl-sc-block_1-0-4">
              <p align="left">A vendor, also known as a supplier, is a person or a business entity that sells something. Large retail store chains such as Target, for example, generally have a list of vendors from which they purchase goods at wholesale prices that they then sell at retail prices to their customers.</p>
            </div>
            <div align="left">Some vendors also can sell directly to the customer, as seen with street vendors and food trucks. In addition, a vendor can act as a Business to Business (B2B) sales organization that provides parts of a product to another business to make an end product.            </div>
            <p align="left">&nbsp;</p></th>
          </tr>
      </table>
    </div>
  </div>
</div>
</form>
</body>
</html>
