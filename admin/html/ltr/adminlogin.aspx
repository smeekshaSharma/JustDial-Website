<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Login</title>
<script runat="server">

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        t1.Text = ""
        t2.Text = ""
        
    End Sub
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Dim pass As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If t1.Text = "" Or t2.Text = "" Then
            MsgBox("Please Fill All Fields")
            t1.Text = ""
            t2.Text = ""
            Exit Sub 
        End If
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\humandata.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand(" select count(*) from regis where email='" & t1.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If count > 0 Then
            command = New Data.SqlClient.SqlCommand(" select np from regis where email='" & t1.Text & "'")
            command.Connection = conn
            pass = command.ExecuteScalar
            If pass = t2.Text Then
                command = New Data.SqlClient.SqlCommand("delete  from logintemp")
                command.Connection = conn
                command.ExecuteScalar()
                sql = "insert into logintemp values('" & t1.Text & "')"
                datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
                datareader.InsertCommand.ExecuteScalar()
                MsgBox("Login Successfully")
                Response.Redirect("admindashboard.aspx")
            Else
                MsgBox("Wrong Password")
                t2.Text = ""
            End If
        Else
            MsgBox("Wrong UserName")
            t1.Text = ""
        End If
      
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:454px;
	z-index:1;
	left: 0;
	top: 0;
	background-image: url(../../../images/adminlo.jpg);
}
body {
	background-color: #000000;
}
#apDiv2 {
	position:absolute;
	width:544px;
	height:311px;
	z-index:1;
	left: 47px;
	top: 74px;
}
.style1 {
	color: #EF3C27;
	font-weight: bold;
	font-size: 24px;
}
a {
	font-family: Calibri;
	font-size: 18px;
	color: #FFFFCC;
	font-weight: bold;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFFCC;
}
a:hover {
	text-decoration: underline;
	color: #FFFFFF;
}
a:active {
	text-decoration: none;
	color: #FFFFFF;
}
.style2 {
	color: #EF3C27;
	font-size: 24px;
}
.style3 {color: #000000}
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" border="0">
      <tr>
        <th colspan="7" bgcolor="#7CC1AE" scope="row"><span class="style2">Just Dial</span></th>
      </tr>
      <tr>
        <th colspan="7" scope="row"><div align="left"><span class="style1">Admin Login</span></div></th>
      </tr>
      <tr>
        <th colspan="7" scope="row"><hr /></th>
        </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td colspan="6">&nbsp;</td>
      </tr>
      <tr>
        <th width="5%" scope="row"><div align="right"><img src="../../../images/user.png" width="25" height="29" /></div></th>
        <td colspan="6">
            <asp:TextBox ID="t1" runat="server" Width="100%"></asp:TextBox>          </td>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td colspan="6">&nbsp;</td>
      </tr>
      <tr>
        <th scope="row"><div align="right"><img src="../../../images/pass.png" width="25" height="25" /></div></th>
        <td colspan="6">
            <asp:TextBox ID="t2" runat="server" Width="100%" TextMode="Password"></asp:TextBox>          </td>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td width="51%" colspan="5">&nbsp;            </td>
        <td width="44%">&nbsp;          </td>
      </tr>
      
      <tr>
        <th scope="row">&nbsp;</th>
        <td colspan="5"><a href="../../../source/index.aspx" class="style3">&lt;&lt;Go to Home Page</a> </td>
        <td>&nbsp;            </td>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td>&nbsp;            </td>
        <td>&nbsp;            </td>
        <td>&nbsp;            </td>
        <td>&nbsp;            </td>
        <td><div align="right">
          <asp:Button ID="Button1" runat="server" BackColor="#FFA962" Text="Login" 
                onclick="Button1_Click" Width="66px" />
        </div></td>
        <td>
            <asp:Button ID="Button2" runat="server" BackColor="#FFA962" 
                onclick="Button2_Click" Text="Reset" />          </td>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td colspan="6">&nbsp;</td>
      </tr>
    </table>
  </div>
</div>
</form>
</body>
</html>
