<%@page import="java.sql.*"%>
<%
	int count=0;
	String name=request.getParameter("id");
	String password=request.getParameter("password");
	System.out.println(name);
    System.out.println(password);
	try
	{	
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery("select count(*) from user where id='"+name+"' and Password='"+password+"' ");
	if(rs.next())
	{
	count=rs.getInt(1);
	}
	
	if(count==0)
	{
	response.sendRedirect("userlogin.jsp?msg=Incorrect Username or Password");
	}
	else
	{
	session.setAttribute("name1",name);
	response.sendRedirect("userhome.jsp");
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>