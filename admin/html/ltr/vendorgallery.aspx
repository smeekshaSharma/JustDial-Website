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
            command = New Data.SqlClient.SqlCommand(" select mnumber from detail where bemail='" & Label1.Text & "'")
            command.Connection = conn
            t3.Text = command.ExecuteScalar
            t2.Text = fname & " " & lname
            t9.Text = Format(Now, "dd/MM/yyyy")
            t9.Enabled = False
            t4.Text = Label1.Text
            conn.Close()
        End If
    End Sub
   
    Dim pdf As String
    Protected Sub Button1_Click1(ByVal sender As Object, ByVal e As System.EventArgs)
        pdf = "~/images/" & FileUpload1.FileName
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        conn.Open()
        sql = "insert into gallery values ('" & t9.Text & "', '" & t1.Text & "','" & t2.Text & "','" & t3.Text & "','" & t4.Text & "', '" & pdf & "','" & t10.Text & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
        MsgBox("Picture Uploaded successfully")
        conn.Close()
        t1.Text = ""
        t2.Text = ""
       
        t3.Text = ""
        t4.Text = ""
           
        t9.Text = ""
        t10.Text = ""
       
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
	height:676px;
	z-index:1;
	left: 0;
	top: 0;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:56px;
	z-index:1;
	background-color: #FFFFFF;
}
#apDiv3 {
	position:absolute;
	width:20%;
	height:517px;
	z-index:2;
	top: 57px;
	left: 0;
	background-color: #141619;
}
.style1 {color: #FFFFFF}
.style5 {font-size: 20px}
#apDiv4 {
	position:absolute;
	width:1066px;
	height:516px;
	z-index:3;
	left: 256px;
	top: 56px;
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
.style22 {	font-size: 18px;
	font-weight: bold;
}
.style23 {        height: 26px;
}
.style24 {        height: 30px;
}
    .style25
    {
        height: 23px;
    }
.style15 {font-size: 36px;
	font-weight: bold;
	color: #FFFFFF;
}
.style16 {color: #EF3C27}
.style26 {color: #FE9D1E; font-weight: bold; }
#apDiv9 {position:absolute;
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
          <th scope="row"><div align="left"><span class="style5 style9">Vendor Dashboard</span></div></th>
        </tr>
      </table>
    </div>
    <div id="apDiv6">
      <table width="100%" border="0">
        <tr>
          <th colspan="6" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><hr /></th>
        </tr>
        <tr>
          <th width="29%" bordercolor="#333333" bgcolor="#FFFFFF" scope="row">
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>            </th>
          <td width="19%" bordercolor="#333333" bgcolor="#FFFFFF">
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>            </td>
          <td width="1%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="33%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="17%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="1%" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <th width="29%" bordercolor="#333333" bgcolor="#FFFFFF" scope="row" 
                class="style25"></th>
          <td width="19%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25">
              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>            </td>
          <td width="1%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25"></td>
          <td width="33%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25">
              <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" 
                  onclick="LinkButton1_Click">Logout</asp:LinkButton>            </td>
          <td width="17%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25"></td>
          <td width="1%" bordercolor="#333333" bgcolor="#FFFFFF" class="style25"></td>
        </tr>
        <tr>
          <th width="29%" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left" class="style22"><u>Business Gallery </u></div></th>
          <td width="19%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td width="1%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td width="33%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td width="17%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td width="1%" bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th height="21" bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left"></div></th>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><div align="left"><strong><span class="style21">Current Date</span></strong></div></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span>
              <asp:TextBox ID="t9" runat="server"></asp:TextBox>          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left">Business Name</div></th>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t1" runat="server"></asp:TextBox>          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Properitor Name</strong></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t2" runat="server"></asp:TextBox>          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row"><div align="left">Mobile No.</div></th>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t3" runat="server"></asp:TextBox>          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Email</strong></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><asp:TextBox ID="t4" runat="server"></asp:TextBox>          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF"><span class="style21"></span></td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row" class="style23"><div align="left">Picture</div></th>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style23" colspan="5">
              <asp:FileUpload ID="FileUpload1" runat="server" />            </td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row" class="style24"><div align="left">Picture Name</div></th>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24"><asp:TextBox ID="t10" 
                  runat="server"></asp:TextBox>          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24">&nbsp;              </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24">&nbsp;</td>
        </tr>
        <tr>
          <th bordercolor="#333333" bgcolor="#FFFFFF" scope="row" class="style24"></th>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24">&nbsp;</td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24"></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24"></td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24">
              <asp:Button ID="Button1" runat="server" Text="Save" 
                onclick="Button1_Click1" style="height: 26px" />          </td>
          <td bordercolor="#333333" bgcolor="#FFFFFF" class="style24"><span class="style21"></span></td>
        </tr>
      </table>
    </div>
  </div>
  <div id="apDiv9">
    <table width="1320" height="35" border="0">
      <tr>
        <td width="652"><span class="style26">This website is designed &amp; developed by Simran Madaan </span></td>
        <td width="652"><div align="right"><span class="style26">All Rights Reserved @ JustDial</span></div></td>
      </tr>
    </table>
  </div>
</div>
</form>
</body>
</html>
