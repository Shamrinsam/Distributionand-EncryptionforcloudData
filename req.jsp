<%@page import="java.sql.*"%>
<%

	String sla=request.getParameter("id");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
	Statement st=con.createStatement();
	int i =st.executeUpdate("update user set request='complated' where id="+sla+"");
	response.sendRedirect("request.jsp?msg= Request Accepted");
	
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>