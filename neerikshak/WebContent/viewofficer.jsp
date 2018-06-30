<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>  
<body>  
  
<%@page import="com.neerikshak.*,com.neerikshak.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Officers List</h1>  
  
<%  
List<Officer> list=OfficerDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table class="table table-hover">  
<thead>
      <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Mobile</th>
        <th>Email</th>  
		<th>State</th>
		<th>City</th>
		<th>Area</th>
      </tr>
    </thead>
<c:forEach items="${list}" var="u">  
<tbody>
      <tr>
        <td>${u.getId()}</td>
        <td>${u.getName()}</td>
        <td>${u.getMobile()}</td>
        <td>${u.getEmail()}</td>
        <td>${u.getState()}</td>
        <td>${u.getCity()}</td>
        <td>${u.getArea()}</td>
        
      </tr>
    </tbody> 

</c:forEach>  
</table>  
<br/>  

 
    


</body>  
</html>  