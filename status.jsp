<%@ page import="java.sql.*,java.text.SimpleDateFormat"%>
<%String msg = request.getParameter("msg"); %>
<%
String id=(String)session.getAttribute("name1");
//out.println(id);
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/new", "root", "root");
	//PreparedStatement ps = con.prepareStatement("select * from freq ");
	PreparedStatement ps = con.prepareStatement("select * from freq where uid='"+id+"' ");
	ResultSet rs=ps.executeQuery();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Distribution and Encryption for cloud Data</title>
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
  <!-- // end #header -->
	<!-- end #header -->
	
	
	<br>
	<h4 align="left">User ....<font color="yellow"> <%=session.getAttribute("name1") %></font></h4>
	
	
	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">			</div>
				<!-- end #content -->
				<div id="sidebar" style="width: 522px;">
<!-- 				<div id="splash">&nbsp;</div> -->
		
		
	<br><h2>View Status</h2>
		
  <%if(msg!=null){ %>
							<p><%=msg%></p>
							<%} %>
							<table border='1' bgcolor="#e9cfec" cellpadding="6px">
						<tr><th>File ID</th>
						<th>File Name</th>
						<th>Key</th>
						<th>Status</th>
						<th>Download</th>
						</tr>
						<%while(rs.next()){ %>
						<tr>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString("f_name") %></td>
						<td><%if(rs.getString(3).equalsIgnoreCase("-11")){ %>
						Not Generated
						<%}else{ %>
						<%=rs.getString(3) %>
						<%} %></td>
						<td><%=rs.getString(2) %></td>
						<td>
						<%if(rs.getString(2).equalsIgnoreCase("Accepted")){ %>
						<a href="status1.jsp?key12=<%=rs.getString(3) %>&fid=<%=rs.getString(1)%>"><font color="blue"><u>Click to Download</u></font></a>
						<%}else{ %>
						Wait for acceptance
						<%} %>
						</td>
						</tr>
						<%} %>
						</table>
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