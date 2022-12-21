<%@ page import="java.sql.*,java.text.SimpleDateFormat"%>
<%String msg = request.getParameter("msg"); %>

<%
String key12=request.getParameter("key12");
session.setAttribute("key12", key12);
String fid=request.getParameter("fid");
session.setAttribute("fid", fid);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Distribution and Encryption for cloud Data </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="header">
		<div id="logo" style="width: 945px;">
			<center><h3><a href="#" style="text-transform:">Distribution and Encryption for cloud Data</a></h3></center>
		</div>
		</div><!-- end #header -->
		<br><br>
		
		
<div id="wrapper">
	<div id="menu">
		<ul>
			<li class=><span><a href="userhome.jsp">Home</a></span></li>
			
			
			
		</ul>
	</div>
	<!-- end #menu -->
	
	<br>
	<h4 align="left">User ....<font color="yellow"> <%=session.getAttribute("name1") %></font></h4>
	
	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					
				</div>
				<!-- end #content -->
				
				<div id="sidebar" style="width: 900px; padding:20px,20px,20px;">
<!-- 				<div id="splash">&nbsp;</div> -->
		
		
		<div id="sidebar">
	 <br><br><center><h3>Download File</h3>
	 <br>
							<%if(msg!=null){ %>
							<p><%=msg%></p>
							<%} %>
							<form action="status2.jsp" method="post" name="register" onsubmit="return val()">
						<center><table>
						<tr>
						<td>Enter Key</td>
						<td><input type="text" name="k"></td>
						</tr>
						</table><br>
						<input type="submit" value="Download" name="Download">
						</form>
		  
	
	
	
	
		</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>

	
	
	

</body>
</html>