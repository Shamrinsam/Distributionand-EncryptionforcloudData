<%String msg=request.getParameter("msg");%>
<%@ page import="java.sql.*"%>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
	PreparedStatement ps=con.prepareStatement("select * from freq2 where status=?");
	
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
<div id="wrapper">
	<div id="menu">
		<ul>
						
							<li class="selected">
							<a href="userhome.jsp">Home</a>
						</li>
						<li><a href="viewprofile.jsp">profile</a></li>
						
						
						<li>
							<a href="fileupload.jsp">Uploadfile</a>
						</li>
						<li><a href="accept.jsp">View Request</a></li>
						<li>
							<a href="viewfile.jsp">ViewFiles</a>
						</li>
							<li>
							<a href="status.jsp">status</a>
						</li>
						<li>
							<a href="index.html">Logout</a>
						</li>
					</ul>
	</div>
	<!-- end #menu -->
	<div id="header">
		<div id="logo" style="width: 945px;">
			<h1><a href="#" style="text-transform: capitalize;"> Distribution and Encryption for cloud Data</a></h1>
		</div>
		
	</div>
	
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
				</div>
				<!-- end #content -->
				<div id="sidebar" style="width: 522px;">
				<div id="splash">&nbsp;</div>
		
	<br><br><center><h1>View Request</h1>
	<%if(msg!=null){ %>
							<p><%=msg%></p>
							<%} %>
							<form name="register" action="acpt1.jsp">
						<center><table  border='1'>
						
						<th>File ID</th>
						<th>Check to Accept</th>
					
						</tr>
						
						<%while(rs.next()){ %>
						<tr>
						<td><%=rs.getString("fid") %></td>
						
						<td><input type="checkbox" name="req" value="<%=rs.getString("fid") %>"></td>
						</tr>
						<%} %>
						
						</table><br>
						<input type="submit" value="submit" name="submit">
						</form>
						<%}
catch(Exception e){
	e.printStackTrace();
}

%>
		
	
	
	
	
		</div>
	</div><!-- // end #main -->
	<div id="footer">
		<p>Copyright &copy; 2016-2017 - All Right Reserved - </p>
	</div><!-- // end #footer -->
</div><!-- // end #wrapper -->

</body>
</html>

