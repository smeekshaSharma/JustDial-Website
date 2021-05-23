<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Just Dial</title>
<script runat="server">
    
    
    
    
    
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    
    Dim bid As String
                                                 
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select sid from bookservicetemp")
        command.Connection = conn
        bid = command.ExecuteScalar()
       
        sql = " insert into service values('" & t1.Text & "','" & t2.Text & "','" & t3.Text & "','" & t4.Text & "','" & t5.Text & "','" & t6.Text & "','" & t7.Text & "','" & t8.Text & "','" & t9.Text & "','" & t10.Text & "','" & t11.Text & "','" & bid & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
        command = New Data.SqlClient.SqlCommand("delete from bookservicetemp")
        command.Connection = conn
        command.ExecuteScalar()
        bid = Val(bid) + 123
        sql = " insert into bookservicetemp values('" & bid & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
        MsgBox("Your Service Has Been Booked")
        conn.Close()
       
       Response.Redirect("booking.aspx")
                                                
    End Sub

   
  
   
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
        t4.Text = ""
        t5.Text = ""
      
    End Sub
    Dim fname As String
    Dim lname As String
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select email from booktemp")
        command.Connection = conn
        t3.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand(" select fname from detail where bemail='" & t3.Text & "'")
        command.Connection = conn
        fname = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand(" select lname from detail where bemail='" & t3.Text & "'")
        command.Connection = conn
        lname = command.ExecuteScalar
        t2.Text = fname & " " & lname
        command = New Data.SqlClient.SqlCommand("select cname from detail where bemail='" & t3.Text & "'")
        command.Connection = conn
        t1.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand("select mnumber from detail where bemail='" & t3.Text & "'")
        command.Connection = conn
        t6.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand("select bcategory from detail where bemail='" & t3.Text & "'")
        command.Connection = conn
        t7.Text = command.ExecuteScalar
        command = New Data.SqlClient.SqlCommand("select address from detail where bemail='" & t3.Text & "'")
        command.Connection = conn
        t4.Text = command.ExecuteScalar
        conn.Close()
        t5.Text = Format(Now, "dd/MM/yyyy")
        t1.Enabled = False
        t2.Enabled = False
        t3.Enabled = False
        t4.Enabled = False
        t5.Enabled = False
        t6.Enabled = False
        t7.Enabled = False
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:526px;
	z-index:1;
	left: 0;
	top: 0;
	background-color: #FFFFFF;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:64px;
	z-index:1;
	background-color: #999999;
	left: 0px;
	top: 1px;
}
body {
	background-color: #FFFFFF;
}
#apDiv3 {
	position:absolute;
	width:68%;
	height:313px;
	z-index:2;
	left: 0px;
	top: 99px;
}
#apDiv4 {
	position:absolute;
	width:570px;
	height:224px;
	z-index:3;
	left: 7px;
	top: 412px;
}
#apDiv5 {
	position:absolute;
	width:1054px;
	height:30px;
	z-index:4;
	left: 139px;
	top: 67px;
}
#apDiv6 {
	position:absolute;
	width:647px;
	height:215px;
	z-index:5;
	left: 594px;
	top: 413px;
}
#apDiv7 {
	position:absolute;
	width:368px;
	height:39px;
	z-index:6;
	left: 426px;
	top: 659px;
	background-color: #27A9E3;
}
#apDiv8 {
	position:absolute;
	width:220px;
	height:140px;
	z-index:7;
	left: 186px;
	top: 717px;
}
#apDiv9 {
	position:absolute;
	width:220px;
	height:140px;
	z-index:7;
	left: 799px;
	top: 721px;
}
#apDiv10 {
	position:absolute;
	width:220px;
	height:142px;
	z-index:7;
	left: 495px;
	top: 716px;
}
#apDiv11 {
	position:absolute;
	width:100%;
	height:31px;
	z-index:8;
	left: 0;
	top: 464px;
	background-color: #f0f0f0;
}
.style18 {color: #000000; }
#apDiv12 {
	position:absolute;
	width:211px;
	height:91px;
	z-index:1;
	left: 2px;
}
#apDiv13 {
	position:absolute;
	width:218px;
	height:91px;
	z-index:1;
	left: 428px;
	top: 25px;
}
#apDiv14 {
	position:absolute;
	width:207px;
	height:95px;
	z-index:1;
	left: 215px;
	top: 118px;
}
#apDiv15 {
	position:absolute;
	width:100%;
	height:396px;
	z-index:9;
	left: 0px;
	top: 65px;
}
#apDiv16 {
	position:absolute;
	width:90%;
	height:259px;
	z-index:1;
	left: 67px;
	top: 90px;
}
    .style22
    {
        height: 23px;
    }
#apDiv17 {
	position:absolute;
	width:28%;
	height:311px;
	z-index:10;
	left: 919px;
	top: 99px;
}
.style25 {height: 20px; font-weight: bold; }
#apDiv18 {
	position:absolute;
	width:100%;
	height:32px;
	z-index:2;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
.style23 {font-size: 18px; color: #EF3C27; }
.style26 {font-size: 25px;
	color: #EF3C27;
}
.style27 {color: #EF3C27}
-->
</style>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" border="0">
      <tr>
        <th width="54%" scope="col"><div align="left" class="style26">Justdial</div></th>
        <th width="17%" bgcolor="#000000" scope="col"><span class="style23">Free Listing</span></th>
        <th width="12%" bgcolor="#000000" scope="col"><span class="style23">Login</span></th>
        <th width="17%" bgcolor="#000000" scope="col"><span class="style23">Contact</span></th>
      </tr>
    </table>
  </div>
  <div id="apDiv11">
    <table width="100%" height="32" border="0">
      <tr>
        <th scope="col"><div align="left" class="style18">This website is developed by Simran Madaan</div></th>
        <th scope="col"><div align="left" class="style18">All Rights Reserved @ Just Dial</div></th>
      </tr>
    </table>
  </div>
  <div id="apDiv15">
    <div id="apDiv16">
      <table width="100%" border="0">
        <tr>
          <th colspan="4" bgcolor="#000000" class="style22" scope="col"><span class="style27">Request for Call Back</span></th>
        </tr>
        <tr>
          <td width="14%"><strong>Business Name</strong></td>
          <td width="32%">
              <strong>
              <asp:TextBox ID="t1" runat="server"></asp:TextBox>
              </strong> </td>
          <td width="16%"><strong>Current Date</strong></td>
          <td width="38%">
              <strong>
              <asp:TextBox ID="t5" runat="server"></asp:TextBox>
              </strong> </td>
        </tr>
        <tr>
          <td><strong>Properitor Name</strong></td>
          <td>
              <strong>
              <asp:TextBox ID="t2" runat="server"></asp:TextBox>
              </strong> </td>
          <td><strong>Mobile No</strong></td>
          <td>
              <strong>
              <asp:TextBox ID="t6" runat="server"></asp:TextBox>
              </strong> </td>
        </tr>
        <tr>
          <td><strong>Properitor Email</strong></td>
          <td>
              <strong>
              <asp:TextBox ID="t3" runat="server"></asp:TextBox>
              </strong>            </td>
          <td><strong>Service Provider</strong></td>
          <td>
              <strong>
              <asp:TextBox ID="t7" runat="server"></asp:TextBox>
              </strong> </td>
        </tr>
        <tr>
          <td height="21"><strong>Business Address</strong></td>
          <td>
              <strong>
              <asp:TextBox ID="t4" runat="server"></asp:TextBox>
              </strong> </td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="4" class="style25">Customer Detail</td>
          </tr>
        <tr>
          <td class="style25">Customer Name</td>
          <td class="style25">
              <strong>
              <asp:TextBox ID="t8" runat="server"></asp:TextBox>
              </strong> </td>
          <td class="style25">Customer Email</td>
          <td class="style25">
              <strong>
              <asp:TextBox ID="t10" runat="server"></asp:TextBox>
              </strong> </td>
        </tr>
        <tr>
          <td class="style25">Customer Mobile No</td>
          <td class="style25">
              <strong>
              <asp:TextBox ID="t9" runat="server"></asp:TextBox>
              </strong> </td>
          <td class="style25">Customer Address</td>
          <td class="style25">
              <strong>
              <asp:TextBox ID="t11" runat="server"></asp:TextBox>
              </strong> </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>
              <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Book" 
                  Height="25px" />            </td>
          <td>
              <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click"/>            </td>
        </tr>
      </table>
    </div>
    <div id="apDiv18">
      <table width="100%" border="0">
        <tr>
          <th scope="col" class="style22"> <asp:Menu ID="Menu1" runat="server" BackColor="Black" 
                DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" 
                ForeColor="#FFA962" Orientation="Horizontal" StaticSubMenuIndent="10px">
              <DynamicHoverStyle BackColor="Black" ForeColor="White" />
              <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
              <DynamicMenuStyle BackColor="Black" />
              <DynamicSelectedStyle BackColor="Gray" />
              <Items>
                <asp:MenuItem Text="Home" Value="Home" ImageUrl="~/images/homelogo.png" 
                        NavigateUrl="~/source/index.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Vendor" Value="Vendor" ImageUrl="~/images/vendorlogo.png">
                  <asp:MenuItem Text="Free Listing" Value="Free Listing" 
                            NavigateUrl="~/source/form.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Login" Value="Login" 
                            NavigateUrl="~/admin/html/ltr/login.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="User Vendor Plan" Value="User Vendor Plan" 
                        ImageUrl="~/images/userlogo.png" NavigateUrl="~/source/plan.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Booking" Value="Booking" ImageUrl="~/images/booklogo.png" 
                        NavigateUrl="~/source/booking.aspx"></asp:MenuItem>
                <asp:MenuItem Text="FAQ" Value="FAQ" ImageUrl="~/images/faqlogo.png" 
                        NavigateUrl="~/source/faq.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Feedback" Value="Feedback" ImageUrl="~/images/feedlogo.png" 
                        NavigateUrl="~/source/feedback.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact" Value="Contact" 
                        ImageUrl="~/images/contactlogo.png" NavigateUrl="~/source/contact.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Admin Login" Value="Admin Login" 
                        ImageUrl="~/images/adminlogo2.png" 
                        NavigateUrl="~/admin/html/ltr/adminlogin.aspx"></asp:MenuItem>
              </Items>
              <StaticHoverStyle BackColor="Black" ForeColor="White" />
              <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
              <StaticSelectedStyle BackColor="Black" />
            </asp:Menu>
          </th>
        </tr>
      </table>
    </div>
  </div>
  </div>
</form>
</body>
</html>
