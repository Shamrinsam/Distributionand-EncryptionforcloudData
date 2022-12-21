<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%String msg = request.getParameter("msg"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title> Distribution and Encryption for cloud Data</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

<script>
function validation()
{
var a = document.form.uname.value;
var b = document.form.pwd.value;
if(a=="")
{
alert("Enter Your UserName");
document.form.uname.focus();
return false;
}
if(b=="")
{
alert("Enter the password");
document.form.pwd.focus();
return false;
}
}
</script>
</head>
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
						
					</ul>
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div id="contact" class="body">
						
							
							
							<BR><BR>
							
							<div id="splash">&nbsp;</div> 
								<br><br><br><br>

<!-- 							<div><h1 align="center">Login here</h1></div> -->
							<h1 align="center">Admin Login</h1> 
        <%if(msg!=null){ %>
        <%=msg %>
        <%} %>
		<!-- <img src="images/policy.png" style=" width: 822px;height: 170px;"> -->
		<form action="adminaction.jsp" method="post" name="form" onsubmit="return validation();">
          <div class="form_settings">
            <br>
            <table align="center">
            <tr>
            	<td><b>User Name </b></td>
            	<td><input type="text"  name="uname" class="contact" required></td>
            </tr>
            <tr>
            	<td><b>Password</b></td>
            	<td><input type="password" name="pwd" class="contact" required></td>
            </tr>
            <tr>
            <td></td>
            <td><input class="submit" type="submit" name="contact_submitted" value="Login"/></td>
            </tr>
            </table>
            
            <br>
            <br>
            
          </div>
        </form>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		
		</div>
	</div>
	
	<br><br><br><br><br>
	<div id="footer-wrapper">
	<div id="footer">
		<p><font color="white">&copy;. All rights reserved.</font></p>
	</div>
	<!-- end #footer -->
</div>
	
	
	
</body>
</html>




