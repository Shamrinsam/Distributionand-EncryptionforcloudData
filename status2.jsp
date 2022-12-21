<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	String msg = request.getParameter("msg");
	int p=0;

	String k = request.getParameter("k");
	
%>
<%
	int cnt = 0;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/new", "root", "root");
		PreparedStatement ps = con
				.prepareStatement("select count(*) from freq where key12=? ");
		ps.setString(1, k);
		
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			cnt = rs.getInt(1);
		}
		if (cnt == 0) {
			
			response.sendRedirect("status1.jsp?msg=please enter valid key (Do Not Attack)");
		} else {
			System.out.println("sdl2 else");
			PreparedStatement ps2 = con.prepareStatement("select fid from freq where key12=?");
			ps2.setString(1, k);
			ResultSet rs2 = ps2.executeQuery();
			String fid=null;
			while(rs2.next())
			{
				fid=rs2.getString(1);
			}
			int f=Integer.parseInt(fid);
			System.out.printf("fffffffffffffffff::"+f);
			
			PreparedStatement ps1 = con
					.prepareStatement("select AES_DECRYPT(file,'key') from file where fid=?");
			ps1.setInt(1, f);
			ResultSet rs1 = ps1.executeQuery();
			String t = null;
			while (rs1.next()) {
				System.out.println("sdl2 while");
				Blob file = rs1.getBlob("AES_DECRYPT(file,'key')");
				byte[] b = file.getBytes(1, (int) file.length());
				t = new String(b);
				session.setAttribute("t", t);
				System.out.println("sdl2 t:" + t);
			}
			if(t==null){
				int f1=Integer.parseInt(fid);
				
				p=1;
				PreparedStatement ps3 = con
						.prepareStatement("select AES_DECRYPT(file,'key') from file2 where fid=?");
				ps3.setInt(1, f);
				ResultSet rs3 = ps3.executeQuery();
				
				while (rs3.next()) {
					System.out.println("sdl2 while");
					Blob file = rs3.getBlob("AES_DECRYPT(file,'key')");
					byte[] b = file.getBytes(1, (int) file.length());
					t = new String(b);
					session.setAttribute("t", t);
					System.out.println("sdl2 t:" + t);
				}
			}
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Distribution and Encryption for cloud Data</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="header">
		<div id="logo" style="width: 945px;">
			<center><h3><a href="#" style="text-transform:">Distribution and Encryption for cloud Data</a></h3>
		</div>
		
		
	</div>
	<br>
	<br>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li class=><span><a href="userhome.jsp">Home</a></span></li>
			<li><a href="status1.jsp">back</a></li>	
		</ul>
	</div>
	<!-- end #menu -->
	
	<!-- end #header -->
	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					
				</div>
				<!-- end #content -->
				
				<div id="sidebar" style="width: 900px; padding:20px,20px,20px;">
<!-- 				<div id="splash">&nbsp;</div> -->
		<br><br>
		
		<div id="sidebar">
	 <%
					if (msg != null) {
				%>
				<h3><%=msg%></h3>
				<%
					}
				%>
				<form name="form" action="temp.jsp?id=<%=f %>&&server=<%=p %>" method="post"
						onsubmit="return validation()">
						<textarea name="b" cols="80" rows="20"><%=t%></textarea>
						<br>
						<br> <br>
						
						<input type="submit" value="Download" name="Decrypt">
					</form>
					<%
		}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("****************");
	%>
	
	
	
		</div>
	</div><!-- // end #main -->
	<div id="footer">
<!-- 		<p>Copyright &copy; 2016-2017 - All Right Reserved - </p> -->
	</div><!-- // end #footer -->
</div><!-- // end #wrapper -->

</body>
</html>