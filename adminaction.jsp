<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
if(uname.equals("admin")&&pwd.equals("admin"))
{
	response.sendRedirect("adminhome.jsp?msg=Login Successful");
}
else
{
	response.sendRedirect("admin.jsp?msg=Invalid Credentials");
}
%>