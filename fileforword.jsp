<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String msg = request.getParameter("msg"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

String filename=request.getParameter("filename");
session.setAttribute("filename",filename);
String date=request.getParameter("date");
session.setAttribute("date",date);
String sla=request.getParameter("sla");
session.setAttribute("sla",sla);
//String fkey=request.getParameter("fkey");
//session.setAttribute("fkey", fkey);
System.out.println("id..:"+session.getAttribute("id"));
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Distribution and Encryption for cloud Data</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
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
			<li class=><span><a href="userhome.jsp">Home</a></span></li>
		</ul>
	</div>
	<!-- end #menu -->
	
	
	<!-- end #header -->
	
	<br>
	<h4 align="left">User ....<font color="yellow"> <%=session.getAttribute("name1") %></font></h4>
	
	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					
		
					
					
				</div>
				<!-- end #content -->
<!-- 				<div id="splash">&nbsp;</div> -->
				<div id="sidebar" style="width: 522px;">
					<ul>
						<li>
							<h2>File Upload</h2>
							<%if(msg!=null){ %>
							<p><%=msg%></p>
							<%} %>
						</li>
						<li>
						<form name="register" action="fileload.jsp" enctype="multipart/form-data" method="post">
					<ul>
								<table>
								<tr><td>Date </td><td><input  type="text" name="date" value="<%=date%>" readonly></td></tr>
								<tr><td>File Name </td><td><input type="text" name="filename" value="<%=filename%>" readonly></td></tr>
								
								<tr><td>SLA </td><td><input  type="text" name="sla" value="<%=sla%>" readonly></td></tr>
								<tr>
								<%if(sla.equals("sla1")){ %>
								<td>Service Agreement </td><td><input  type="text" name="sla" value="sla1 : cost is 100" readonly></td>
								<% } %>
								<%if(sla.equals("sla2")){ %>
								<td>Service Agreement </td><td><input  type="text" name="sla" value="sla2 : cost is 200" readonly></td>
								<%} %>	
											
								
								</tr>
								<tr><td>File </td><td><input  type="file" name="file"></td></tr>
								<tr><td><input type="submit" name="Upload" value="Upload"></td><td><input type="reset" name="reset" value="reset"></td></tr>
								</table><br>
								<li></li>
						</ul>	
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




<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



<div id="footer-wrapper">
	<div id="footer">
		<p><font color="white">&copy;. All rights reserved.</font> </p>
	</div>
	<!-- end #footer -->
</div>
</body>
</html>
