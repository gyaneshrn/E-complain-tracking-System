<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>
	<%@page import="com.neerikshak.*,com.neerikshak.bean.*,java.util.*"%> 
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<%  
	String id=request.getParameter("id"); 
	OfficerDao.delete(id);  
	%>
	
	<jsp:include page="welcome.jsp"></jsp:include>
	
</body>
</html>