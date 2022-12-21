<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Distribution and Encryption for cloud Data</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
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
						<li><a href="viewprofile.jsp">Uploadedfiles</a></li>
						<li><a href="renewal.jsp">SLA Request</a></li>
						
						<li>
							<a href="fileupload.jsp">Upload</a>
						</li>
						<li><a href="accept.jsp">View Request</a></li>
						<li>
							<a href="viewfile.jsp">OtherFiles</a>
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
	
	
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					</div>
				<!-- end #content -->
				<div id="sidebar" style="width: 522px;">
				<div id="splash">&nbsp;</div>
		<ul><h2> <%=session.getAttribute("name1") %></h2>
<tr><form name="reg" action="renew.jsp" method="post" onSubmit="return validate()">
<table>
											<td>SLA:</td>
											<td><select name="sla">
											<option value="select">Select</option>
											<option value="sla1">1 Month</option>
											<option value="sla2">3 Months</option>
											<option value="sla3">6 Months</option>
				
								
								</select></td></tr>
								<tr>
											<td></td>
											<td><input type="submit" value="submit"  name="table"></td>
											<td><a href="request.jsp?"><u></u></a></td>
										</tr>
								</table>
								</from>
								</div>
								
								<br><br>
				
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer-wrapper">
	<div id="footer">
		<p><font color="white">&copy;. All rights reserved.</font></p>
	</div>
	<!-- end #footer -->
</div>
</body>
</html>