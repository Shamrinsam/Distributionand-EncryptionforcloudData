<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,java.text.SimpleDateFormat"%>
    <%@page import="java.sql.*"%>
<% 
int a=0;
String s=null;
String msg = request.getParameter("msg"); 
String id=(String)session.getAttribute("name1");
//out.print(id);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
PreparedStatement ps=con.prepareStatement("select sla from user where id ="+id+" and request='complated'" );
ResultSet rs=ps.executeQuery();

if(rs.next()){
	do{
	s= rs.getString(1);
	}while(rs.next());

}else{
	a=1;
}

 
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
			function val(a)
			{
				document.getElementById("fk").value=a;
			}
		</script>
<%
     
 	 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
     int fkey=(int)(Math.random()*10000);
%>

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
							<h2>File Upload</h2>
							<%if(msg!=null){ %>
							<font color="green"><%=msg%></font>
							<%} %>
						</li>
						<li>
						<%if(a==1){
							out.print("admin not given permission<br><br><br><br><br><br><br>");
						}	else{%>
						
						<form name="register" action="fileforword.jsp">
					<ul>
								<table>
								<tr><td>Date :</td><td><input  type="text" name="date" value="<%=strDateNew1%>"></td></tr>
								<tr><td>File Name :</td><td><input type="text" name="filename"></td></tr>
								
								<tr>
								<td>SLA :</td>
								
<%-- 								<input type "text" name="sla" value="<%=s%>"> --%>
								
								
								<td>
								<select name="sla"> 
										<option value="select">Select</option> 
										<option value="sla1">1 Month</option>
										<option value="sla2">3 Months</option>
										
								
								</select>
								</td>
								</tr>
								
								
								<tr><td><input type="submit" name="Upload" value="Upload"></td><td><input type="reset" name="reset" value="reset"></td></tr>
								</table><br>
								<li></li>
						</ul>	
						</form>
						</li>
						<%} %>
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


<div id="footer-wrapper">
	<div id="footer">
		<p><font color="white">&copy;. All rights reserved.</font></p>
	</div>
	<!-- end #footer -->
</div>
</body>
</html>
