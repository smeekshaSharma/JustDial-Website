<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Just Dial</title>
<script runat="server">

  
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Protected Sub Button1_Click1(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        conn.Open()
        sql = "insert into feed values('" & t5.Text & "','" & t7.Text & "','" & t6.Text & "','" & t8.Text & "','" & t1.Text & "','" & t2.Text & "','" & t3.Text & "','" & t4.Text & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
        MsgBox("Feedback Has Been Saved")
        conn.Close()
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
        t4.Text = ""
        t5.Text = ""
        t6.Text = ""
        t7.Text = ""
        t8.Text = ""
        
       
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
        t4.Text=""
    End Sub
    Dim count As New Integer
    
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from service where bid='" & t5.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar()
        If count > 0 Then
            command = New Data.SqlClient.SqlCommand("select pname from service where bid='" & t5.Text & "'")
            command.Connection = conn
            t7.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select pemail from service where bid='" & t5.Text & "'")
            command.Connection = conn
            t6.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select mobno from service where bid='" & t5.Text & "'")
            command.Connection = conn
            t8.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select cname from service where bid='" & t5.Text & "'")
            command.Connection = conn
            t1.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select cemail from service where bid='" & t5.Text & "'")
            command.Connection = conn
            t2.Text = command.ExecuteScalar()
            command = New Data.SqlClient.SqlCommand("select cmobno from service where bid='" & t5.Text & "'")
            command.Connection = conn
            t3.Text = command.ExecuteScalar()
            conn.Close()
            
        Else
            MsgBox("This Service Id not Exist")
            conn.Close()
            
        End If
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:790px;
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
	height:60px;
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
	left: 327px;
	top: 751px;
}
.style13 {font-size: 14px; color: #006699; }
.style21 {color: #333333}
#apDiv11 {
	position:absolute;
	width:80%;
	height:267px;
	z-index:3;
	left: 0px;
	top: 413px;
}
.style64 {
	font-size: 18px;
	font-weight: bold;
	color: #333333;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}
.style72 {
	color: #EF3C27;
	font-size: 16;
}
    .style75
    {
        width: 12%;
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
#apDiv12 {
	position:absolute;
	width:1186px;
	height:37px;
	z-index:4;
	top: 60px;
}
#apDiv13 {
	position:absolute;
	width:100%;
	height:311px;
	z-index:5;
	top: 97px;
}
#apDiv14 {
	position:absolute;
	width:70%;
	height:311px;
	z-index:1;
}
#apDiv15 {
	position:absolute;
	width:30%;
	height:311px;
	z-index:2;
	left: 923px;
}
#apDiv16 {
	position:absolute;
	width:1186px;
	height:38px;
	z-index:6;
	top: 60px;
}
.style19 {        height: 23px;
}
.style26 {color: #FFFF00}
.style23 {font-size: 18px; color: #EF3C27; }
.style24 {font-size: 25px;
	color: #EF3C27;
}
.style78 {font-size: 16px; color: #EF3C27; }
.style80 {font-size: 16px; font-weight: bold; color: #EF3C27; }
.style81 {width: 12%; color: #EF3C27; }
#apDiv17 {
	position:absolute;
	width:100%;
	height:37px;
	z-index:7;
	left: 0;
	top: 748px;
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
        <th colspan="6" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="center" class="style64"><u>Customer Feedback</u></div></th>
      </tr>
      <tr>
        <th colspan="6" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><hr /></th>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style78">Service Id</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t5" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:Button ID="Button3" runat="server" Text="Fetch" onclick="Button3_Click" />          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style75"><span class="style80">Vendor Name</span></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t7" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style78">Vendor Email</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t6" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style75"><span class="style80">Vendor Mobile No.</span></td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t8" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
      <tr>
        <th width="33%" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style78">Client Name</span></div></th>
        <td width="19%" bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>          </td>
        <td width="8%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td width="19%" bordercolor="#333333" bgcolor="#FFFFFF" class="style81">&nbsp;</td>
        <td width="14%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td width="7%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style78">Client Email</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t2" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style75">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style72">Client Mobile Number</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t3" runat="server"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style75">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th height="25" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"><span class="style78">Service FeedBack</span></div></th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:TextBox ID="t4" runat="server" TextMode="MultiLine"></asp:TextBox>          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style75">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
      </tr>
      <tr>
        <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row">&nbsp;</th>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        <td bordercolor="#333333" bgcolor="#FFFFFF" class="style75">
            <asp:Button ID="Button1" runat="server" Text="Submit" 
                onclick="Button1_Click1" />          </td>
        <td bordercolor="#333333" bgcolor="#FFFFFF">
            <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />          </td>
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
