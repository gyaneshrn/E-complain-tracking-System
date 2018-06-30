<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

		<%@page import="com.neerikshak.*,com.neerikshak.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%  
List<Query> list=QueryDao.getAllDoneQueries();  
request.setAttribute("list",list);  
%>
  
<table class="table table-hover">  
<thead>
      <tr>
        <th>Query ID</th>
        <th>Image</th>
        <th>Date</th>
        <th>State</th>
        <th>City</th>
        <th>Area</th>  
		<th>Landmark</th>
		<th>Query_For</th>
		<th>Suggested_Solution</th>
		
      </tr>
    </thead>
<c:forEach items="${list}" var="u">  
<tbody>
      <tr>
        <td>${u.getId()}</td>
        <td><img src="retrieve.jsp?id=${u.getId()}" width=130 height=130></td>
        <td>${u.getDate()}</td>
        <td>${u.getState()}</td>
        <td>${u.getCity()}</td>
        <td>${u.getArea()}</td>
        <td>${u.getLandmark()}</td>
        <td>${u.getQuery_For()}</td>
        <td>${u.getSuggested_Solution()}</td>
        
      </tr>
    </tbody> 

</c:forEach>  
</table>  
<br/> 

</body>
</html>