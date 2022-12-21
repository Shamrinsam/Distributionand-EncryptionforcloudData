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
String id = (String)session.getAttribute("name1");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
	PreparedStatement ps=con.prepareStatement("select * from file where uid!='"+id+"'");
	
	
	ResultSet rs=ps.executeQuery();
	PreparedStatement ps1=con.prepareStatement("select * from file2 where uid!='"+id+"'");
ResultSet rs1=ps1.executeQuery();

%>

<body>
<div id="header">
		<div id="logo" style="width: 945px;">
			<h3><a href="#" style="text-transform: capitalize;">Distribution and Encryption for cloud Data</a></h3>
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
							<a href="fileupload.jsp">File Upload</a>
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
				<div id="content">
				</div>
				<!-- end #content -->
				<div id="sidebar" style="width: 522px;">
<!-- 				<div id="splash">&nbsp;</div> -->
					<ul>
						<li>
							<h2>Other Files</h2>
							<%if(msg!=null){ %>
							<p><%=msg%></p>
							<%} %>
						</li>
						<li>
						
						<form name="register" action=>
						<table  border='1' bgcolor="#e9cfec" cellpadding="2px" >
						<tr><th>ID</th>
						<th>File Name</th>
						<th>File</th>
						<th>Date</th>
						<th>File Size</th>
						<th>SLA</th>
						<th>View</th>
						
						
						</tr>
						<%while(rs.next()){ %>
						<tr>
						
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><a href="fileview.jsp?id=<%=rs.getString(8)%>&&fn=<%=rs.getString(2)%>&&f_o=<%=rs.getString(1)%>&&server=1"><font color="blue"><u>Send Request</u></font></a></td>
						
						</tr>
						<%} %>
						
						<%while(rs1.next()){ %>
						<tr>
						
						<td><%=rs1.getString(1) %></td>
						<td><%=rs1.getString(2) %></td>
						<td><%=rs1.getString(3) %></td>
						<td><%=rs1.getString(4) %></td>
						<td><%=rs1.getString(5) %></td>
						<td><%=rs1.getString(6) %></td>
						<td><a href="fileview.jsp?id=<%=rs1.getString(8)%>&&fn=<%=rs1.getString(1)%>&&f_o=<%=rs1.getString(1)%>&&server=2"><font color="blue"><u>Send Request</u></font></a></td>
						
						
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

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br>

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
