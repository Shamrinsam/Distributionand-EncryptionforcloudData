<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.text.SimpleDateFormat"%>
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
String id=request.getParameter("id");
String f_o=request.getParameter("f_o");
String fn=request.getParameter("fn");	
//String uid=(String)session.getAttribute("id");
//out.println(id);
//String sla=null;
try
{
String t=null;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
if(request.getParameter("server").equalsIgnoreCase("1")){
PreparedStatement ps=con.prepareStatement("select * from file where fid=?");
ps.setString(1, id);
ResultSet rs = ps.executeQuery();
while(rs.next())
{
	 //sla=rs.getString("sla");
	Blob file = rs.getBlob("file");
	byte [] b= file.getBytes(1,(int)file.length());
	t=new String(b);
	session.setAttribute("t",t);
}
}

else{
PreparedStatement ps1=con.prepareStatement("select * from file2 where fid=?");
ps1.setString(1, id);
ResultSet rs1 = ps1.executeQuery();
while(rs1.next())
{
	 //sla=rs.getString("sla");
	Blob file = rs1.getBlob("file");
	byte [] b1= file.getBytes(1,(int)file.length());
	t=new String(b1);
	session.setAttribute("t",t);
}
}
%>

<body>

<div id="header">
		<div id="logo" style="width: 945px;">
		<center>	<h3><a href="#" style="text-transform: capitalize;">Distribution and Encryption for cloud Data</a></h3></center>
		</div>
		
	</div>


<br><br>


<div id="wrapper">
	<div id="menu">
		<ul>
			<li><span><a href="userhome.jsp">Home</a></span></li>
			
			
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
							<h2>Encrypted File</h2>
							<%if(msg!=null){ %>
							<p><%=msg%></p>
							<%} %>
						</li>
						<li>
						<form name="form" action="filereq.jsp?fid=<%=id%>&&fn=<%=fn%>&&f_o=<%=f_o%>" method="post" onsubmit="return validation()">
    <textarea    name="b" cols="115"  rows="20" ><%=t%></textarea>
    <table align="center" >
          <tr> 
            <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              
              
              <input type="submit" value="Generate key" class="sub1"> 
            
             
              <br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp; <u><a href="viewfile.jsp"> <font color="blue">Back</font></a></u>
              </td>
              
          </tr>
        </table>
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

<br><br><br><br><br>

<div id="footer-wrapper">
	<div id="footer">
		<p><font color="white">&copy;. All rights reserved.</font></p>
	</div>
	<!-- end #footer -->
</div>
</body>
<%
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</html>
