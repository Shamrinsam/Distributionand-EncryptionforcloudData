<%String msg=request.getParameter("msg");%>
<%@ page import="java.sql.*"%>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
	PreparedStatement ps=con.prepareStatement("select * from freq where status=? and owner_uid='"+session.getAttribute("name1")+"'");
	
	ps.setString(1, "Not Accepted");
	ResultSet rs=ps.executeQuery();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title> Distribution and Encryption for cloud Data</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#banner').cycle({
				fx: 'fade' 
			});
		});
	</script>
</head>
<body>
<body>
<div id="header">
		<div id="logo" style="width: 945px;">
			<center><h3><a href="#" style="text-transform:"> Distribution and Encryption for cloud Data</a></h3>
		</div>
		
		
	</div>
	<br><br>
<div id="wrapper">
	<div id="menu">
		<ul>
						<li class="selected">
							<a href="userhome.jsp">Home</a>
						</li>
						<li>
							<a href="fileupload.jsp">File Upload </a>
						</li>
						<li><a href="viewprofile.jsp">Uploaded Files</a></li>
<!-- 						<li><a href="renewal.jsp">SLA Request</a></li> -->
						
						
						<li><a href="accept.jsp">View Request</a></li>
						<li>
							<a href="viewfile.jsp">Other Files</a>
						</li>
							<li>
							<a href="status.jsp">Response</a>
						</li>
						<li>
							<a href="index.html">Logout</a>
						</li>
						
					</ul>
	</div>
	<!-- end #menu -->
	<br>
	<h4 align="left">User ....<font color="yellow"> <%=session.getAttribute("name1") %></font></h4>
	
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">			</div>
				<!-- end #content -->
				<div id="sidebar" style="width: 522px;">
<!-- 				<div id="splash">&nbsp;</div> -->
		
	<h2>View Request </h2>
	<%if(msg!=null){ %>
							<font color="green"><%=msg%></font>
							<%} %>
						<form name="register" action="accept1.jsp">
						<table  border='1' bgcolor="#e9cfec" cellpadding="6px">
						
						<th>File ID</th>
						<th>File Name</th>
						<th>Requested User ID</th>
						<th>Check to Accept</th>
					
						</tr>
						
						<%while(rs.next()){ %>
						<tr>
						<td><%=rs.getString("fid") %></td>
						<td><%=rs.getString("f_name") %></td>
						<td><%=rs.getString("uid") %></td>
						<td><input type="checkbox" name="req" value="<%=rs.getString("fid") %>"></td>
						</tr>
						<%} %>
						
						</table><br>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<input type="submit" value="submit" name="submit">
						</form>
						<%}
catch(Exception e){
	e.printStackTrace();
}

%>
		
</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br>

<div id="footer-wrapper">
	<div id="footer">
		<p><font color="white">&copy;. All rights reserved.</font></p>
	</div>
	<!-- end #footer -->
</div>

</body>
</html>

