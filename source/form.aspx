<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Just Dial</title>
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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim pdf As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        pdf = "~/images/" & FileUpload1.FileName
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count (*) from detail where bemail ='" & t5.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("This Business Detail Already Exist ")
            t5.Text = ""
            conn.Close()
        Else
            sql = "insert into detail values ('" & t1.Text & "', '" & t2.Text & "','" & d1.Text & "','" & d2.Text & "','" & t3.Text & "', '" & t4.Text & "', '" & t5.Text & "', '" & t6.Text & "', '" & d3.Text & "','" & t7.Text & "','" & t8.Text & "', '" & d4.Text & "', '" & t9.Text & "', '" & t10.Text & "','" & pdf & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("Free Listening List created successfully")
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
            
            t9.Text = ""
            t10.Text = ""
            d3.Text = "Select Any One"
            d4.Text = "Select Any One"
        End If
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:926px;
	z-index:1;
	left: 0;
	top: 0;
}
#apDiv2 {
	position:absolute;
	width:698px;
	height:401px;
	z-index:2;
	left: 329px;
	top: 84px;
	background-color: #000000;
}
#apDiv3 {
	position:absolute;
	width:699px;
	height:30px;
	z-index:1;
	left: 0px;
	top: 0px;
}
#apDiv4 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:3;
	left: 110px;
	top: 55px;
}
#apDiv5 {
	position:absolute;
	width:346px;
	height:20px;
	z-index:2;
	left: 9px;
	top: 73px;
}
#apDiv6 {
	position:absolute;
	width:699px;
	height:184px;
	z-index:3;
	left: 0px;
	top: 105px;
}
#apDiv7 {
	position:absolute;
	width:100%;
	height:59px;
	z-index:1;
	left: 0;
	top: 0;
	background-color: #999999;
}
#apDiv8 {
	position:absolute;
	width:177px;
	height:19px;
	z-index:1;
	left: -2px;
	top: 13px;
}
#apDiv9 {
	position:absolute;
	width:177px;
	height:50px;
	z-index:1;
	left: 3px;
	top: 3px;
}
#apDiv10 {
	position:absolute;
	width:699px;
	height:20px;
	z-index:2;
	left: 318px;
	top: 828px;
}
.style13 {font-size: 14px; color: #006699; }
.style21 {color: #333333}
#apDiv11 {
	position:absolute;
	width:978px;
	height:416px;
	z-index:3;
	left: 0px;
	top: 406px;
}
.style64 {
	font-size: 18px;
	font-weight: bold;
	color: #333333;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}
.style65 {font-size: 16px; color: #CC6633;}
.style66 {font-size: 16px; font-weight: bold; color: #CC6633;}
.style72 {color: #CC6633; font-size: 16;}
.style73 {color: #003399}
    .style74
    {
        height: 26px;
    }
#apDiv12 {
	position:absolute;
	width:200px;
	height:30px;
	z-index:4;
	left: 0px;
	top: 60px;
}
#apDiv13 {
	position:absolute;
	width:100%;
	height:314px;
	z-index:5;
	left: 0px;
	top: 91px;
}
#apDiv14 {
	position:absolute;
	width:71%;
	height:311px;
	z-index:1;
}
#apDiv15 {
	position:absolute;
	width:28%;
	height:311px;
	z-index:2;
	left: 939px;
	top: -1px;
}
#apDiv16 {
	position:absolute;
	width:1186px;
	height:30px;
	z-index:6;
	top: 60px;
}
.style19 {        height: 23px;
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
.style24 {font-size: 25px;
	color: #EF3C27;
}
.style26 {color: #FFFF00}
.style76 {color: #00FFFF}
#apDiv17 {
	position:absolute;
	width:100%;
	height:41px;
	z-index:7;
	left: 0;
	top: 880px;
}
.style18 {color: #000000; }
-->
</style>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv7">
    <table width="100%" border="0">
      <tr>
        <th width="54%" scope="col"><div align="left" class="style24">Justdial</div></th>
        <th width="17%" bgcolor="#000000" scope="col"><span class="style23">Free Listing</span></th>
        <th width="12%" bgcolor="#000000" scope="col"><span class="style23">Login</span></th>
        <th width="17%" bgcolor="#000000" scope="col"><span class="style23">Contact</span></th>
      </tr>
    </table>
  </div>
  <div id="apDiv11">
    <table width="100%" border="0">
      <tr>
        <th colspan="6" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="center" class="style64">List Your Business For<span class="style73"> FREE</span> with India's Leading Local Search Engine</div></th>
      </tr>
      <tr>
        <th colspan="6" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><hr /></th>
      </tr>
      <tr>
        <th width="35%" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><strong><u>BUSINESS DETAIL</u></strong></div></th>
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
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style65">Company Name</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"><span class="style66">Address</span></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t2" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style65">Select State</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:DropDownList ID="d1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="16px" 
                Width="128px">
                <asp:ListItem>
                  <div align="left">Select Any One</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Andhra Pradesh</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Arunachal Pradesh</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Assam</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Bihar</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Chhattisgarh</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Goa</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Gujarat</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Haryana</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Himachal Pradesh</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Jharkhand</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Karnataka</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Kerala</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Madhya Pradesh</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Maharashtra</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Manipur</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Meghalaya</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Nagaland</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Odisha</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Punjab</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Rajasthan</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Sikkim</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Tamil Nadu</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Uttarakhand</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Uttar Pradesh</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">West Bengal</div>
                </asp:ListItem>
            </asp:DropDownList>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"><span class="style66">Select City</span></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:DropDownList ID="d2" runat="server">            </asp:DropDownList>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style65">Pincode</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t3" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"><span class="style66">Area Name</span></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t4" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style65">Business Email</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t5" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"><span class="style66">Contact Number</span></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t6" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style21"><span class="style65">Business <span class="style66">Category</span></span></span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:DropDownList ID="d3" runat="server">
                <asp:ListItem>
                  <div align="left">Select Any One</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Air Tickets</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Anything On Hire</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Apply for Loan</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Auto Care</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Automobile</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">B2B</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Baby Care</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Banquets</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Bills &amp; Recharge</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Book Hotel</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Books</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Bus</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Cabs &amp; Car Rentals</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Caterers</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Chemists</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Civil Constructors</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Courier</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Daily Needs</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Dance &amp; Music</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Doctor</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Education</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Emergency</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Entertainment</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Event Organizer</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Fitness</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Flights</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Foreign Exchange</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Flowers</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Home Decor</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Home Improvements</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Hospitals</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Hotels</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">House Keeping</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Industrial Products</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Insurance</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Interior Designer</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Internet SIM Card</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Internet</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Jobs</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Jewellery</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Labs</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Language Classes</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Loan &amp; Credit Card</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Medical</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Modular Kitchen</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Movies</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">On Demand Services</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Packet and Movers</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Party</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Personal Care</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Pest Control</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Pet and Pet Care</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Play School</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Real Estate</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Repairs</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Restaurants</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Shop Online</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Security Services</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Shopping</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Sports Coach </div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Sports Goods</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Train</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Training Institute</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Transporters</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Travel</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Wedding</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Wine Shop</div>
                </asp:ListItem>
            </asp:DropDownList>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr bgcolor="#CCCCCC">
        <th colspan="6" bordercolor="#333333" bgcolor="#000000" scope="row"><div align="left" class="style21">
          <div align="left" class="style76"><u>PROPERITOR DETAIL</u></div>
        </div></th>
      </tr>
      
      <tr>
        <th colspan="6" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style72">Name</span><span class="style21"></span></div></th>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style66">First Name</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t7" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"><span class="style66">Last Name</span></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t8" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style72">Gender</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:DropDownList ID="d4" runat="server">
                <asp:ListItem>
                  <div align="left">Select Any One</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Male</div>
                </asp:ListItem>
                <asp:ListItem>
                  <div align="left">Female</div>
                </asp:ListItem>
            </asp:DropDownList>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style72">Mobile Number</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t9" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row" class="style74"><div align="left"><span class="style72">Email</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74">
            <asp:TextBox ID="t10" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74"></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row" class="style74"><div align="left">Upload 
          Picture</div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74">
            <div align="left">
              <asp:FileUpload ID="FileUpload1" runat="server" />
            </div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74"><div align="left"></div></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style74">&nbsp;</td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row">&nbsp;</th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:Button ID="Button1" runat="server" BackColor="#CC6633" Font-Bold="True" 
                ForeColor="White" Text="Submit" onclick="Button1_Click" 
                style="height: 26px" />
&nbsp;&nbsp;&nbsp;            </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row">&nbsp;</th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
    </table>
  </div>
  <div id="apDiv13">
    <div id="apDiv14">
      <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','100%','height','311','src','../../../animation/Movie1','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','../../../animation/Movie1' ); //end AC code
      </script>
      <noscript>
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="100%" height="311">
        <param name="movie" value="../../../animation/Movie1.swf" />
        <param name="quality" value="high" />
        <embed src="../../../animation/Movie1.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="100%" height="311"></embed>
      </object>
      </noscript>
      </div>
    <div id="apDiv15">
      <table width="100%" border="0">
        <tr>
          <th bgcolor="#000000" scope="col"><span class="style26">JD NEWS-:</span></th>
        </tr>
        <tr>
          <td><p align="justify">Ghaziabad youth went to Delhi during riots never return.</p>
              <p align="justify">Three Children among six in Noida under Crona Virus Scanner.</p>
            <p align="justify">Two Noida Schools shut to carry out sanitation drives.</p>
            <p align="justify">YEIDA land scam court rejects CBI plea.</p></td>
        </tr>
      </table>
    </div>
  </div>
  <div id="apDiv16">
    <table width="100%" border="0">
      <tr>
        <th scope="col" class="style19"> <asp:Menu ID="Menu1" runat="server" BackColor="Black" 
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
  <div id="apDiv17">
    <table width="100%" height="32" border="0">
      <tr>
        <th scope="col"><div align="left" class="style18">This website is developed by Simran Madaan</div></th>
        <th scope="col"><div align="left" class="style18">All Rights Reserved @ Just Dial</div></th>
      </tr>
    </table>
  </div>
</div>
</form>
    <p>&nbsp;
</p>
</body>
</html>
