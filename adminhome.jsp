<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,java.text.SimpleDateFormat"%>
<%String msg = request.getParameter("msg"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title> Distribution and Encryption for cloud Data</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>

	
	<div id="header">
		<div id="logo" style="width: 945px;">
			<center><h3><a href="#" style="text-transform:"> Distribution and Encryption for cloud Data</a></h3></center>
		</div>
		
		
	</div>
	<br></br>
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
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				
				<!-- end #content -->
				<div id="sidebar" style="width: 522px;">
					<div id="splash">&nbsp;</div>
					<ul>
						<li>
						<h2>	Welcome... <font color="yellow">Admin</font> </h2>
							<%if(msg!=null){ %>
							<p><%=msg%></p>
							<%} %>
						</li>
						<li>
						
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

<div id="footer-wrapper">
	<div id="footer">
		<p><font color="white">&copy;. All rights reserved.</font></p>
	</div>
	<!-- end #footer -->
</div>
</body>
</html>
