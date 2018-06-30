  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
          pageEncoding="ISO-8859-1"%>
          <%@ page trimDirectiveWhitespaces="true" %>
           <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     </head>
    <body>
    
    
     <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
  <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
 <%@ page session="true"%>
 <%
 try
 {
 javax.servlet.http.HttpServletResponse res=null;;
 int returnValue = 0;
 Connection con = null;
 Statement stmt = null;
 ResultSet rs = null;

 String id;
 id=request.getParameter("id");
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","");
 stmt = con.createStatement();
 rs = stmt.executeQuery("SELECT images FROM dummy where querID= "+id);
 int i=1;
 if (rs.next()) {
		Blob ph = rs.getBlob("images");
		byte data[] = ph.getBytes(1, (int) ph.length());
		OutputStream outt = response.getOutputStream();
		outt.write(data);
		outt.flush();
		outt.close();
	}
 else
 {
 returnValue = 1;
 }
 }
 catch(Exception e)
 {
 out.println("SQLEXCEPTION : " +e);
 }
%>
  </body>
    </html>