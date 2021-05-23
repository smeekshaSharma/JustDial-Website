<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Human Press | Admin DashBoard</title>
<script runat="server">

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        d2.Items.Clear()
        If d1.Text = "Andhra Pradesh" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Ranglum")
            d2.Items.Add("Dadam")
            d2.Items.Add("Thinsa")
            d2.Items.Add("Sola")
            d2.Items.Add("Kaimai")
            d2.Items.Add("Khela")
            d2.Items.Add("Kheta")
        ElseIf d1.Text = "Arunachal Pradesh" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Itanagar")
            d2.Items.Add("Pasighat")
            d2.Items.Add("Hawai")
            d2.Items.Add("Changlang")
            d2.Items.Add("Jairampur")
            d2.Items.Add("Ziro")
            d2.Items.Add("Tawang")
        ElseIf d1.Text = "Assam" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Goalpara")
            d2.Items.Add("Dergaon")
            d2.Items.Add("Dhekiajuli")
            d2.Items.Add("Lakhipur")
            d2.Items.Add("North Lakhimpur")
            d2.Items.Add("Haflong")
        ElseIf d1.Text = "Bihar" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Patna")
            d2.Items.Add("Gaya")
            d2.Items.Add("Bhagalpur")
            d2.Items.Add("Muzaffarpur")
            d2.Items.Add("Ara")
            d2.Items.Add("Chapra")
            d2.Items.Add("katihar")
        ElseIf d1.Text = "Chattisgarh" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Raipur")
            d2.Items.Add("Bilaspur")
            d2.Items.Add("Bastar")
            d2.Items.Add("Jashpur")
            d2.Items.Add("Durg")
            d2.Items.Add("Koriya")
            d2.Items.Add("Mahasamund")
        ElseIf d1.Text = "Goa" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Panaji")
            d2.Items.Add("Margao")
            d2.Items.Add("Mapura")
            d2.Items.Add("Ponda")
            d2.Items.Add("Sanguem")
            d2.Items.Add("Vasca Da Gama")
            d2.Items.Add("Mormugao")
        ElseIf d1.Text = "Gujarat" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Ahmedabad")
            d2.Items.Add("Rajkot")
            d2.Items.Add("Surat")
            d2.Items.Add("Jamnagar")
            d2.Items.Add("Junagadh")
            d2.Items.Add("Bhavnagar")
            d2.Items.Add("Gandhinagar")
        ElseIf d1.Text = "Haryana" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Faridabad")
            d2.Items.Add("Karnal")
            d2.Items.Add("Hisar")
            d2.Items.Add("Panipat")
            d2.Items.Add("Sonipat")
            d2.Items.Add("Ambala")
            d2.Items.Add("Rohtak")
        ElseIf d1.Text = "Himachal Pradesh" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Mandi")
            d2.Items.Add("Shimla")
            d2.Items.Add("Dharamshala")
            d2.Items.Add("Chamba")
            d2.Items.Add("Salon")
            d2.Items.Add("Kullu")
            d2.Items.Add("Manali")
        ElseIf d1.Text = "Jharkhand" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Ranchi")
            d2.Items.Add("Jamshedpur")
            d2.Items.Add("Dhanbad")
            d2.Items.Add("Dumka")
            d2.Items.Add("Hazaribagh")
            d2.Items.Add("Chaibasa")
            d2.Items.Add("Daltonganj")
        ElseIf d1.Text = "Karnataka" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Bengaluru")
            d2.Items.Add("Hubli")
            d2.Items.Add("Mangalore")
            d2.Items.Add("Belgaum")
            d2.Items.Add("Vijaypura")
            d2.Items.Add("Ballari")
            d2.Items.Add("Mysore")
        ElseIf d1.Text = "Kerala" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Kochi")
            d2.Items.Add("Thiruvanahthapuram")
            d2.Items.Add("Khozikode")
            d2.Items.Add("Kollam")
            d2.Items.Add("Thrissur")
            d2.Items.Add("Kannur")
        ElseIf d1.Text = "Madhya Pradesh" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Bhopal")
            d2.Items.Add("Gwalior")
            d2.Items.Add("Ujjain")
            d2.Items.Add("Bhandavgarh")
            d2.Items.Add("kanha")
            d2.Items.Add("Baihar")
            d2.Items.Add("Bhedaghat")
        ElseIf d1.Text = "Maharashtra" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Mumbai")
            d2.Items.Add("Pune")
            d2.Items.Add("Nagpur")
            d2.Items.Add("Nashik")
            d2.Items.Add("Shirdi")
            d2.Items.Add("Solapur")
            d2.Items.Add("Aurangabad")
        ElseIf d1.Text = "Manipur" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Bishupur")
            d2.Items.Add("Chandel")
            d2.Items.Add("Senapati")
            d2.Items.Add("Ukhrul")
            d2.Items.Add("Kumbi")
            d2.Items.Add("Lamlai")
            d2.Items.Add("Lilong")
        ElseIf d1.Text = "Meghalaya" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Dawki")
            d2.Items.Add("Cherrapunji")
            d2.Items.Add("Shillong")
            d2.Items.Add("Baghmara")
            d2.Items.Add("Jorabat")
            d2.Items.Add("Jowai")
            d2.Items.Add("Mawsynram")
        ElseIf d1.Text = "Nagaland" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Dimapur")
            d2.Items.Add("Kohima")
            d2.Items.Add("Mon")
            d2.Items.Add("Peren")
            d2.Items.Add("Phek")
            d2.Items.Add("Wokha")
            d2.Items.Add("Kiphire")
        ElseIf d1.Text = "Odisha" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Bhubaneswar")
            d2.Items.Add("Cuttack")
            d2.Items.Add("Raurkela")
            d2.Items.Add("Brahmapur")
            d2.Items.Add("Puri")
            d2.Items.Add("Baleshwar")
            d2.Items.Add("Bhadrak")
        ElseIf d1.Text = "Punjab" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Amritsar")
            d2.Items.Add("Jalandhar")
            d2.Items.Add("Patiala")
            d2.Items.Add("ludhiana")
            d2.Items.Add("Batala")
            d2.Items.Add("Pathankot")
            d2.Items.Add("Chandigarh")
        ElseIf d1.Text = "Rajasthan" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Jaipur")
            d2.Items.Add("Jodhpur")
            d2.Items.Add("Udaipur")
            d2.Items.Add("Bharatpur")
            d2.Items.Add("Ajmer")
            d2.Items.Add("Pushkar")
            d2.Items.Add("Jaisalmer")
        ElseIf d1.Text = "Sikkim" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Gangtok")
            d2.Items.Add("Pelling")
            d2.Items.Add("lachung")
            d2.Items.Add("Lachen")
            d2.Items.Add("Namchi")
            d2.Items.Add("Ravangea")
        ElseIf d1.Text = "Tamil Nadu" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Chennai")
            d2.Items.Add("Madurai")
            d2.Items.Add("Vellore")
            d2.Items.Add("Tiruppur")
            d2.Items.Add("Salem")
            d2.Items.Add("Coimbatore")
            d2.Items.Add("Tirunelveli")
        ElseIf d1.Text = "Uttarakhand" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Dehradun")
            d2.Items.Add("Haridwar")
            d2.Items.Add("Almora")
            d2.Items.Add("Haldwani")
            d2.Items.Add("Mussoorie")
            d2.Items.Add("Srinagar")
        ElseIf d1.Text = "Uttar Pradesh" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Lucknow")
            d2.Items.Add("Kanpur")
            d2.Items.Add("Noida")
            d2.Items.Add("Ghaziabad")
            d2.Items.Add("Agra")
            d2.Items.Add("Meerut")
            d2.Items.Add("Varanasi")
        ElseIf d1.Text = "West Bengal" Then
            d2.Items.Add("Select Any One")
            d2.Items.Add("Kolkata")
            d2.Items.Add("Asansol")
            d2.Items.Add("Siliguri")
            d2.Items.Add("Durgapur")
            d2.Items.Add("Baharampur")
            d2.Items.Add("Habra")
            d2.Items.Add("Shantipur")
        End If
    End Sub
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim pass As String
    Dim fname As String
    Dim lname As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        t9.Text = Format(Now, "dd/mm/yy")
        t9.Enabled = False
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
            command = New Data.SqlClient.SqlCommand(" select cname from detail where bemail='" & Label1.Text & "'")
            command.Connection = conn
            t1.Text = command.ExecuteScalar
            
            t2.Text = fname & " " & lname
            t9.Text = Format(Now, "dd/MM/yyyy")
            t9.Enabled = False
            command = New Data.SqlClient.SqlCommand(" select mnumber from detail where bemail='" & Label1.Text & "'")
            command.Connection = conn
            t3.Text = command.ExecuteScalar
            t4.Text = Label1.Text
            d1.Text=Label3.Text 
            conn.Close()
        End If
    End Sub
   
 
    Protected Sub Button1_Click1(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from payment  where email ='" & t4.Text & "' and dur='" & d3.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("This Payment Plan Already Exist ")
            t4.Text = ""
            conn.Close()
        Else
            sql = "insert into payment values ('" & t1.Text & "', '" & t2.Text & "','" & t3.Text & "','" & t4.Text & "','" & d1.Text & "', '" & d2.Text & "', '" & d3.Text & "', '" & t5.Text & "', '" & t6.Text & "','" & t7.Text & "','" & t8.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("Your Payment Plan  created successfully")
            conn.Close()
            t1.Text = ""
            t2.Text = ""
            d1.Text = "Select Any One"
            d2.Text = "Select Any One"
            t3.Text = ""
            t4.Text = ""
            t5.Text = ""
            t6.Text = ""
            t7.Text = ""
            t8.Text = ""
            d3.Text = " Select Any One"
            t9.Text = ""
          
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

    Protected Sub d2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand(" select amount from plandetail where vt='" & d1.Text & "' and pd='" & d2.Text & "'")
        command.Connection = conn
        t8.Text = command.ExecuteScalar
        conn.Close()
        
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:641px;
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
	width:244px;
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
#apDiv6 {
	position:absolute;
	width:81%;
	height:416px;
	z-index:2;
	left: 50px;
	top: 56px;
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
	left: 29px;
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
.style21 {color: #333333}
.style23 {        height: 26px;
}
.style24 {        height: 30px;
}
    .style25
    {
        height: 23px;
    }
.style16 {color: #EF3C27}
.style15 {font-size: 36px;
	font-weight: bold;
	color: #FFFFFF;
}
.style26 {font-size: 18px; font-weight: bold; color: #EF3C27; }
.style27 {color: #FE9D1E; font-weight: bold; }
#apDiv9 {	position:absolute;
	width:100%;
	height:36px;
	z-index:4;
	left: -1px;
	top: 598px;
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
          <th scope="row"><div align="left"><span class="style5 style16">Vendor Dashboard</span></div></th>
        </tr>
      </table>
    </div>
    <div id="apDiv6">
      <table width="100%" border="0">
        <tr>
          <th colspan="6" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><hr /></th>
        </tr>
        <tr>
          <th width="35%" bordercolor="#333333" bgcolor="#FFFFFF" scope="row">
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </th>
          <td width="8%" bordercolor="#333333" bgcolor="#FFFFFF">
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
          <td width="5%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="36%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="14%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="2%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <th width="35%" bordercolor="#333333" bgcolor="#FFFFFF" scope="row" 
                class="style25"></th>
          <td width="8%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25">
              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
          <td width="5%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25"></td>
          <td width="36%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25">
              <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" 
                  onclick="LinkButton1_Click">Logout</asp:LinkButton>
            </td>
          <td width="14%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25"></td>
          <td width="2%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25"></td>
        </tr>
        <tr>
          <th width="35%" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left" class="style26"><u>Vendor Payment</u></div></th>
          <td width="8%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td width="5%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td width="36%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td width="14%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td width="2%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th height="21" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"></div></th>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"><strong><span class="style21">Current Date</span></strong></div></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span>
              <asp:TextBox ID="t9" runat="server"></asp:TextBox>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row">Business Name</th>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t1" runat="server"></asp:TextBox>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Properitor Name</strong></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t2" runat="server"></asp:TextBox>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row">Mobile No.</th>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t3" runat="server"></asp:TextBox>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Email</strong></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t4" runat="server"></asp:TextBox>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row" class="style23">Vendor Type</th>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style23"><asp:DropDownList ID="d1" runat="server">
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
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style23"></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style23"><strong>Duration</strong></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style23">
              <asp:DropDownList ID="d2" runat="server" AutoPostBack="True" 
                  onselectedindexchanged="d2_SelectedIndexChanged">
              <asp:ListItem>Select Any One</asp:ListItem>
              <asp:ListItem>1 year</asp:ListItem>
              <asp:ListItem>2 years</asp:ListItem>
              <asp:ListItem>3 years</asp:ListItem>
              <asp:ListItem>4 years </asp:ListItem>
              <asp:ListItem>5 years</asp:ListItem>
            </asp:DropDownList>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style23"><span class="style21"></span></td>
        </tr>
        <tr bgcolor="#CCCCCC">
          <th colspan="6" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left" class="style21">
              <div align="left" class="style26"><u>Payment</u></div>
          </div></th>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row">Payment Mode</th>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:DropDownList ID="d3" runat="server">
              <asp:ListItem>Select Any One</asp:ListItem>
              <asp:ListItem>Debit Card</asp:ListItem>
              <asp:ListItem>Credit Card</asp:ListItem>
            </asp:DropDownList>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Bank Name</strong></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t5" runat="server"></asp:TextBox>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row">Debit/Credit Card No.</th>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t6" runat="server"></asp:TextBox>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Pin No.</strong></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t7" runat="server" 
                  TextMode="Password"></asp:TextBox>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row">Amount</th>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t8" runat="server"></asp:TextBox>
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row" class="style24"></th>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24"></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24"></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24"></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24"><asp:Button ID="Button1" runat="server" Text="Payment" 
                onclick="Button1_Click1" />      
          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24"><span class="style21"></span></td>
        </tr>
      </table>
    </div>
  </div>
  <div id="apDiv9">
    <table width="1320" height="35" border="0">
      <tr>
        <td width="652"><span class="style27">This website is designed &amp; developed by Simran Madaan </span></td>
        <td width="652"><div align="right"><span class="style27">All Rights Reserved @ JustDial</span></div></td>
      </tr>
    </table>
  </div>
</div>
</form>
</body>
</html>
