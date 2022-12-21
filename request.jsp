<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%String msg = request.getParameter("msg"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Distribution and Encryption for cloud Data</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<%
String id = (String)session.getAttribute("id");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
	
	PreparedStatement ps=con.prepareStatement("select * from user where request='request'");
	ResultSet rs=ps.executeQuery();
	
	

%>

<body>
<div id="header">
		<div id="logo" style="width: 945px;">
			<center><h3><a href="#" style="text-transform:">Distribution and Encryption for cloud Data</a></h3>
		</div>
		
		
	</div>
	<br><br>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li class="selected">
							<a href="adminhome.jsp">Home</a>
						</li>
						
						<li>
							<a href="admin1.jsp">View Users</a>
						</li>
						<li><a href="adminview.jsp">View File</a></li>
						<li><a href="request.jsp">Request</a>
						
						
						<li>
							<a href="index.html">Logout</a>
						</li>
						
		</ul>
	</div>
	<!-- end #menu -->
	
	
	<!-- end #header -->
	
		<br><br>
	Welcome... <font color="yellow">Admin</font>
	
	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					
					
					
					
					
				</div>
				<!-- end #content -->
				<div id="sidebar" style="width: 522px;">
<!-- 				<div id="splash">&nbsp;</div> -->
					<ul>
						<li>
							<h2>User Requests to Upload Files</h2>
							<%if(msg!=null){ %>
							<p><%=msg%></p>
							<%} %>
						</li>
						<li>
						<form name="register" action="cspshare1.jsp">
						<table  border='1' bgcolor="#e9cfec" cellpadding="2px">
						<tr><th>ID</th>
						<th>Name</th>
						<th>DOB</th>
						<th>Mobile</th>
						<th>Email-id</th>
						<th>view</th>
						
						</tr>
						
						<%while(rs.next()){ %>
						<tr>
						
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><a href="req.jsp?id=<%=rs.getString(1)%>"><font color="blue"><u>Accept </u></font></a></td>
						</tr>
						<%} %>
						
						</table><br>
					
						</form>
						</li>
						
					</ul>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<br><br><br><br><br><br><br> <br><br><br><br>
<div id="footer-wrapper">
	<div id="footer">
		<p><font color="white">&copy;. All rights reserved.</font></p>
	</div>
	<!-- end #footer -->
</div>
</body>
<%}
catch(Exception e){
	e.printStackTrace();
}

%>
</html>
