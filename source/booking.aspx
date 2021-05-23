<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
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
   
    Dim email As String
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim pass As String
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        email = GridView1.SelectedRow.Cells(4).Text
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        Command = New Data.SqlClient.SqlCommand("delete  from booktemp")
        Command.Connection = conn
        Command.ExecuteScalar()
        sql = "insert into booktemp values('" & email & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
        Response.Redirect("userservicebook.aspx")
        conn.Close()
        
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:935px;
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
<a href="booking.aspx">booking.aspx</a>
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
	left: 0px;
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
	top: 895px;
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
	height:483px;
	z-index:9;
	left: 0px;
	top: 411px;
}
#apDiv16 {
	position:absolute;
	width:100%;
	height:455px;
	z-index:1;
	left: 0px;
	top: 4px;
}
#apDiv17 {
	position:absolute;
	width:30%;
	height:311px;
	z-index:10;
	left: 919px;
	top: 99px;
}
#apDiv18 {
	position:absolute;
	width:1186px;
	height:33px;
	z-index:11;
	left: 0px;
	top: 65px;
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
.style26 {color: #FFFF00}
.style23 {font-size: 18px; color: #EF3C27; }
.style24 {	font-size: 25px;
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
        <th width="54%" scope="col"><div align="left" class="style24">Justdial</div></th>
        <th width="17%" bgcolor="#000000" scope="col"><span class="style23">Free Listing</span></th>
        <th width="12%" bgcolor="#000000" scope="col"><span class="style23">Login</span></th>
        <th width="17%" bgcolor="#000000" scope="col"><span class="style23">Contact</span></th>
      </tr>
    </table>
  </div>
  <div id="apDiv3">
    <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','917','height','311','src','../../../animation/Movie1','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','../../../animation/Movie1' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="917" height="311">
      <param name="movie" value="../../../animation/Movie1.swf" />
      <param name="quality" value="high" />
      <embed src="../../../animation/Movie1.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="917" height="311"></embed>
    </object>
  </noscript></div>
  <div>
    <table width="100%" border="0">
      <tr>
        <th scope="col">Home</th>
        <th scope="col">Home</th>
        <th scope="col">Home</th>
        <th scope="col">Home</th>
        <th scope="col">Home</th>
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
          <th colspan="6" bgcolor="#000000" scope="col"><span class="style27">Booking Detail</span></th>
        </tr>
        <tr>
          <td><strong>Select State</strong></td>
          <td>
            <asp:DropDownList ID="d1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="16px" 
                Width="128px">
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                <asp:ListItem>Assam</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Chhattisgarh</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Gujarat</asp:ListItem>
                <asp:ListItem>Haryana</asp:ListItem>
                <asp:ListItem>Himachal Pradesh</asp:ListItem>
                <asp:ListItem>Jharkhand</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Manipur</asp:ListItem>
                <asp:ListItem>Meghalaya</asp:ListItem>
                <asp:ListItem>Nagaland</asp:ListItem>
                <asp:ListItem>Odisha</asp:ListItem>
                <asp:ListItem>Punjab</asp:ListItem>
                <asp:ListItem>Rajasthan</asp:ListItem>
                <asp:ListItem>Sikkim</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
                <asp:ListItem>Uttarakhand</asp:ListItem>
                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                <asp:ListItem>West Bengal</asp:ListItem>
            </asp:DropDownList>
            </td>
          <td><strong>Select City</strong></td>
          <td>
              <asp:DropDownList ID="d2" runat="server" AutoPostBack="True">
              </asp:DropDownList>
            </td>
          <td>
         Select Service</strong></td>
          <td>
            <asp:DropDownList ID="d3" runat="server" AutoPostBack="True">
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
        </tr>
        <tr>
          <td colspan="6">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" 
                  PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  onselectedindexchanged="GridView1_SelectedIndexChanged">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <Columns>
                      <asp:CommandField SelectText="Request For Call" ShowSelectButton="True" />
                      <asp:ImageField DataImageUrlField="pic" HeaderText="Picture">
                      </asp:ImageField>
                      <asp:BoundField DataField="cname" HeaderText="Company Name" 
                          SortExpression="cname" />
                      <asp:BoundField DataField="address" HeaderText="Address" 
                          SortExpression="address" />
                      <asp:BoundField DataField="bemail" HeaderText="Email" 
                          SortExpression="bemail" />
                      <asp:BoundField DataField="cnumber" HeaderText="Contact No." 
                          SortExpression="cnumber" />
                      <asp:BoundField DataField="mnumber" HeaderText="Mobile No." 
                          SortExpression="mnumber" />
                  </Columns>
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>            
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  
                  
                  SelectCommand="SELECT [cname], [address], [bemail], [cnumber], [pic], [mnumber] FROM [detail] WHERE (([sc] = @sc) AND ([bcategory] = @bcategory))">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="d2" Name="sc" PropertyName="SelectedValue" 
                          Type="String" />
                      <asp:ControlParameter ControlID="d3" Name="bcategory" 
                          PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
          <td colspan="6">&nbsp;</td>
        </tr>
      </table>
    </div>
  </div>
  <div id="apDiv17">
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
  <div id="apDiv18">
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
</div>
    </form>
</body>
</html>
