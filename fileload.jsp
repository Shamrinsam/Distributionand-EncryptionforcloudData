<%@page import="java.sql.*"%>
<%@ page import="java.sql.*"%>
<%@page import="java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="java.sql.*,java.io.*"%>

<%
	String id = (String) session.getAttribute("name1");
	out.println(id);
	String date = (String) session.getAttribute("date");
	String filename = (String) session.getAttribute("filename");
	out.println(filename);
	String sla = (String) session.getAttribute("sla");
	out.println(sla);
	String fkey = (String) session.getAttribute("fkey");

	Connection con = null;
	PreparedStatement ps = null;

	System.out.println("&&&&&&&" + id);
	try {
		String saveFile = "";
		//String contentType=request.getAttribute("file");
		String contentType = request.getContentType();
		if ((contentType != null)
				&& (contentType.indexOf("multipart/form-data") >= 0)) {
			DataInputStream in = new DataInputStream(
					request.getInputStream());
			int formDataLength = request.getContentLength();
			System.out.println("%%%%%" + formDataLength);
			byte dataBytes[] = new byte[formDataLength];
			int byteRead = 0;
			int totalBytesRead = 0;
			while (totalBytesRead < formDataLength) {
				byteRead = in.read(dataBytes, totalBytesRead,
						formDataLength);
				totalBytesRead += byteRead;
			}
			String file = new String(dataBytes);
			saveFile = file.substring(file.indexOf("filename=\"") + 10);
			saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
			saveFile = saveFile.substring(
					saveFile.lastIndexOf("\\") + 1,
					saveFile.indexOf("\""));
			int lastIndex = contentType.lastIndexOf("=");
			String boundary = contentType.substring(lastIndex + 1,
					contentType.length());
			int pos;
			pos = file.indexOf("filename=\"");
			pos = file.indexOf("\n", pos) + 1;
			pos = file.indexOf("\n", pos) + 1;
			pos = file.indexOf("\n", pos) + 1;
			int boundaryLocation = file.indexOf(boundary, pos) - 4;
			int startPos = ((file.substring(0, pos)).getBytes()).length;
			int endPos = ((file.substring(0, boundaryLocation))
					.getBytes()).length;
			File ff = new File(saveFile);
			FileOutputStream fileOut = new FileOutputStream(ff);
			fileOut.write(dataBytes, startPos, (endPos - startPos));
			fileOut.flush();
			fileOut.close();
			int cnt = 0;
			FileInputStream fis = null;

			File f = new File(saveFile);

			fis = new FileInputStream(f);

			double bytes = file.length();
			//out.print(bytes+"<br>");
			String filesize = Double.toString(bytes);
			//out.println(filesize+"<br>");
			//if(bytes<=1000){
			if (sla.equals(sla)) {
				if (sla.endsWith("1")) {

					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(
							"jdbc:mysql://localhost:3306/new", "root",
							"root");
					out.print("" + con);
					// Statement st=con.createStatement();
					// ResultSet rs=st.executeQuery("SELECT file, COUNT(*) FROM file GROUP BY file");
					PreparedStatement ps1 = con
							.prepareStatement("select count(*) from file where uid=? ");
					ps1.setString(1, id);
					ResultSet rs = ps1.executeQuery();
					while (rs.next()) {
						cnt = rs.getInt(1);
					}
					if (cnt < 1) {

						ps = con.prepareStatement("insert into file (uid,filename,file,date,filesize,sla,filekey)values(?,?,AES_ENCRYPT(?, 'key'),?,?,?,?)");
						ps.setString(1, id);
						ps.setString(2, filename);

						ps.setBinaryStream(3, (InputStream) fis,
								(int) (f.length()));

						ps.setString(4, date);
						bytes = file.length();

						filesize = Double.toString(bytes);
						ps.setString(5, filesize);
						ps.setString(6, sla);
						ps.setString(7, fkey);
						ps.executeUpdate();

						response.sendRedirect("fileupload.jsp?msg=Details are Inserted...");
						out.print(ps);
					} else {
						response.sendRedirect("fileupload.jsp?msg=Your Space is Over");
					}

				}
				if (sla.equals(sla)) {
					if (sla.endsWith("2")) {

						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection(
								"jdbc:mysql://localhost:3306/new",
								"root", "root");
						PreparedStatement ps1 = con
								.prepareStatement("select count(*) from file2 where uid=? ");
						ps1.setString(1, id);
						ResultSet rs = ps1.executeQuery();
						while (rs.next()) {
							cnt = rs.getInt(1);
						}
						if (cnt < 2) {
							ps = con.prepareStatement("insert into file2 (uid,filename,file,date,filesize,sla,filekey)values(?,?,AES_ENCRYPT(?, 'key'),?,?,?,?)");
							ps.setString(1, id);
							ps.setString(2, filename);

							ps.setBinaryStream(3, (InputStream) fis,
									(int) (f.length()));

							ps.setString(4, date);
							bytes = file.length();

							filesize = Double.toString(bytes);
							ps.setString(5, filesize);
							ps.setString(6, sla);
							ps.setString(7, fkey);
							ps.executeUpdate();
							response.sendRedirect("fileupload.jsp?msg=Details are Inserted...");
							out.print(ps);

						} else {
							response.sendRedirect("fileupload.jsp?msg=Your allocated space is over");
						}
					}
				}
			}
		}
	} catch (Exception e) {
		// response.sendRedirect("userhome.jsp?msg=Already Existed...");
		out.println(e);
	}
%>
</body>
</html>