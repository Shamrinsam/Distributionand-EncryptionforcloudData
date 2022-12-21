<%@page import="java.util.*" %>
<%String msg=request.getParameter("msg");%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Distribution and Encryption for cloud Data</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script>


<!-- Website template by freewebsitetemplates.com -->
<%int k=(int)(Math.random()*10000);
String ky=k+"";
System.out.println("ky:"+ky);%>
<html>
<head>
<script type="text/javascript">
function validate()
{
var a=document.reg.name.value;
if(a=="")
	
{
	alert("Please Enter Username");
	document.reg.name.focus();
	return false;
}
if(!isNaN(a))
	{
	alert ("Name should be in Alphabets");
	document.reg.name.select();
	return false;
	}
var b=document.reg.password.value;
if(b=="")
	
{
	alert("Please Enter Password");
	document.reg.password.focus();
	return false;
	}
var c=document.reg.course.value;
if(c=="")
	
{
	alert("Please Enter course Details");
	document.reg.course.focus();
	return false;
	}
var d=document.reg.dob.value;
if(d=="")
	
{
	alert("Please select DOB");
	document.reg.dob.focus();
	return false;
	}
var e=document.reg.mobile.value;
if(e=="")
	
{
	alert("Please Enter Mobile Number");
	document.reg.mobile.focus();
	return false;
	}
if(e.length!=10)
	{
	alert ("Enter valid mobile number");
	document.reg.mobile.focus();
	return false;
	}
var f=document.reg.email.value;
	if(f=="")
	{
	alert ("Enter Mailid");
	document.reg.email.focus();
	return false;
	}
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
	var g=emailfilter.test(document.reg.email.value);
	if(g==false)
	{
	alert(" Enter valid Mail ID");
	document.reg.email.select();
	return false;
	}
var h=document.reg.address.value;
if(h=="")
	
{
	alert("Please Enter Address");
	document.reg.address.focus();
	return false;
	}
	return true;
}

</script>
	
</head>
<body bgcolor="">
	
	
	
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
			
						
						
					</ul>
				</div>
			
			
			
			<div id="contents">
				<div class="box">
					<div>
						<div id="contact" class="body">
							
							<BR>
							<BR>
							<BR>
							<%if(msg!=null){ %>
 <center>    <font color="red" size="6">   <%=msg %> </font>  </center>
        <%} %>
							<br><br><br><br><br><br><br>
							<form name="reg" action="useraction.jsp" method="post" onSubmit="return validate()">
								<center>
								<table height="50%">
								
									<tbody>
									
									 <tr>
											
											<td colspan=2><font size="5" face="Verdana"> <b>Registration Form</b> </font><br><br><br></td>
										</tr> 
									
									
									
									  <tr>
											<td><b>ID:</b></td>
											<td><input type="text" value="<%=ky%>" class="txtfield"
											name="id" readonly></td>
										</tr> 

										<tr>
											<td><b>Name:</b></td>
											<td><input type="text" value="" class="txtfield"
											name="name"></td>
										</tr> 
										
										<tr>
											<td><b>Password:</b></td>
											<td><input type="password" value="" class="txtfield"
											name="password"></td>
										</tr>  
										
										<tr>
											<td><b>DOB:</b></td>
											<td><input type="date" value="date" class="date"
											name="dob"></td>
										</tr>
<!-- 										<tr> -->
<!-- 											<td><b>SLA:</b></td> -->
<!-- 											<td><select name="sla"> -->
<!-- 											<option value="select">Select</option> -->
<!-- 											<option value="sla1">1 Month</option> -->
<!-- 											<option value="sla2">3 Months</option> -->
<!-- 											<option value="sla3">6 Months</option> -->
								
<!-- 								</select></td></tr> -->
											
										<tr>
											<td><b>Mobile:</b></td>
											<td><input type="text" value="" class="txtfield"
											name="mobile"></td>
										</tr>
										<tr>
											<td><b>Email ID:</b></td>
											<td><input type="text" value="" class="txtfield"
											name="email"></td>
										</tr>
										<tr>
											<td><b>Address:</b></td>
											<td><input type="text" value="" class="txtfield"
											name="address"></td>
										</tr>
										
										<tr>
											<td></td>
											<td><input type="submit" value="Register"  name="table"></td>
										</tr>
									</tbody>
									
								</table>
							</form>
							
							
						</div>
					</div>
				</div>
			</div>
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