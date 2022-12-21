<%@page import="java.sql.*"%>
<%
String id=(String)session.getAttribute("name1");
	String sla=request.getParameter("sla");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
	Statement st=con.createStatement();
	int i =st.executeUpdate("update user set sla='"+sla+"', request='request' where id="+id+"");
	response.sendRedirect("userhome.jsp?msg= Request send successfully ");
	
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>