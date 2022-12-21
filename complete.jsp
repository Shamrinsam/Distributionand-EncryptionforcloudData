<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.io.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
	
	
	Blob file= null;
	
	String id=request.getParameter("id");
	//out.print(id);
	
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
		Connection con=null;
	 
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
		ps = con.prepareStatement("select AES_DECRYPT(file,'key') from file where fid='2'");
		//ps.setString(1,"2");
		rs = ps.executeQuery();
		rs.next();
		file = rs.getBlob(1);
		session.setAttribute("resumeBlob",file);
		 response.sendRedirect("download.jsp");
	}
	catch(Exception e)
	{
	
	out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
	}
	

//}
//else
//{//response.sendRedirect("cost_recharge2.jsp");
//}

	%>
</body>
</html>