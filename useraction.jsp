<%@page import="java.sql.*"%>
<%
int count=0;
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String dob=request.getParameter("dob");
	String mobile=request.getParameter("mobile");
	String emailid=request.getParameter("email");
	String address=request.getParameter("address");
	//String sla=request.getParameter("sla");
	String sla="0";
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select count(*) from user where id='"+id+"'");
	while(rs.next())
	{
	count=rs.getInt(1);
	}
	if(count==0)
	{
	int i=st.executeUpdate("insert into user (id,name,password,dob,mobile,emailid,address,sla)  values('"+id+"','"+name+"','"+password+"','"+dob+"','"+mobile+"','"+emailid+"','"+address+"','"+sla+"')");
	if(i!=0)
	{
		session.setAttribute("sla",sla);
	response.sendRedirect("user.jsp?msg= User registration Success");
	}
	else
	{
	response.sendRedirect("user.jsp?msg=values not inserted");
	}
	}
	else
	{
		
	response.sendRedirect("user.jsp?msg=User Already Exist");
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>