 <%@ page import="java.sql.*,java.util.*"%>
 <%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
	
	String arr[]=request.getParameterValues("req");
	
	for(int j=0;j<arr.length;j++)
	{
		int x=(int)(Math.random()*10000);
		String fkey=Integer.toString(x);
		PreparedStatement ps=con.prepareStatement("update freq2 set status=?,key12=? where fid=?");
		ps.setString(1, "Accepted");
		ps.setString(2, fkey);
		ps.setString(3, arr[j]);
		
		ps.executeUpdate();
	}
	response.sendRedirect("acpt.jsp?msg=Key Generated successfully for Accepted requests");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>