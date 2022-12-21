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
String uid=(String)session.getAttribute("id");
out.println(id);
//String sla=null;
try
{
String t=null;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
PreparedStatement ps=con.prepareStatement("select * from file2 where file2.fid=?");
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
%>

<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li><span><a href="uhome.jsp">Home</a></span></li>
			<li class="current_page_item"><a href="viewfile.jsp">View files</a></li>
				
			<li><a href="index.html">logout</a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="header">
		<div id="logo" style="width: 945px;">
			<h3><a href="#" style="text-transform: capitalize;">Distribution and Encryption for cloud Data</a></h3>
		</div>
		
	</div>
	<div id="splash">&nbsp;</div>
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					
					
					
					
					
				</div>
				<!-- end #content -->
				<div id="sidebar" style="width: 522px;">
					<ul>
						<li>
							<h2>Encrypted File</h2>
							<%if(msg!=null){ %>
							<p><%=msg%></p>
							<%} %>
						</li>
						<li>
						<form name="form" action="filereq2.jsp?fid=<%=id %>" method="post" onsubmit="return validation()">
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
												&nbsp; <u><a href="viewfile.jsp"> Back</a></u>
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
<div id="footer-wrapper">
	<div id="footer">
		<p>&copy;. All rights reserved. </p>
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
