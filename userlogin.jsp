<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%String msg = request.getParameter("msg"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Distribution and Encryption for cloud Data</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script>
function val()
{
		
	var eid = document.register.name.value;
	
	if(eid == "")
	{ 	alert("Please enter ID");
		document.register.name.focus();
		flag=0;	
		return false;
	}else
	{
		flag=1;
	}
	
		
	var pwd = document.register.pwd.value;
	if(pwd == "")
	{ 	alert("Please enter password");
		document.register.pwd.focus();
		flag=0;	
		return false;
	}else
	{
		flag=1;
	}
	
	
	
	if(flag==0)
	{
		return false;
	}else
	{
		return true;
	}
}
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
					
						<li><a href="index.html">Home</a></li>
			<li><a href="admin.jsp">Admin Login</a></li>
			<li><a href="userlogin.jsp">User Login</a></li>
			<li><a href="user.jsp">User Registration</a></li>
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
						
					
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div id="contact" class="body">
						
							
							<BR><BR>
							<div id="splash">&nbsp;</div>
							<br><br>
							<h1 align="center">Login Here</h1>
							<br>
							<form name="login" action="uloginaction.jsp" method="post" onSubmit="return validate()">
								<center>
								<table>
									<tbody>
									<%if(msg!=null){%>
			<%=msg%>
			<%}%>
										<tr>
											<td><b>Id:</b></td>
											<td><input type="text" value="" class="txtfield"
											name="id" required></td>
										</tr> <tr>
											<td><b>Password</b></td>
											<td><input type="password" value="" class="txtfield"
											name="password" required></td>
										</tr>   <tr>
											<td></td>
											<td><input type="submit" value="submit" class="btn"></td>
										</tr>
									</tbody>
	<center><td><a href="user.jsp" size="3"><b><FONT SIZE="3" COLOR="red"><I>REGISTER HERE</I></FONT></b></a></td></tr> </center>
								</table>
							</form>
							
						<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
</div>


<br><br><br><br><br><br><br>
<div id="footer-wrapper">
	<div id="footer">
		<p><font color="white">&copy;. All rights reserved.</font></p>
	</div>
	<!-- end #footer -->
</div>



</body>
</html>