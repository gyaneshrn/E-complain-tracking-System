<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- editing officwer stylesheet -->
<style>
body {font-family: Arial;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 80%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}



/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    
    opacity: 0.9;
}

button:hover {
    opacity:1;
}



/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>


<script>
/*jquery  */
$().ready(function(){
$('#ed').click(function(){
	$('#table').fadeOut(1000,function(){
		$('#edform').fadein();
});
});
</script> 


<title>Insert title here</title>

</head>


<body>
<%@page import="com.neerikshak.*,com.neerikshak.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 
<h1>Officers List</h1>  
  
<%  
List<Officer> list=OfficerDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
<!-- table for viewing -->
<div id="table">  
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
        <td><a href="editform.jsp?id=${u.getId()}"><button id="ed" class="btn btn-small" >edit</button></a></td>
        <td><a href="delete_page.jsp?id=${u.getId()}"><button id="rm" class="btn btn-small" >delete</button></a></td>
      </tr>
    </tbody> 

</c:forEach>  
</table>  
</div>
<br/>
 


</body>
</html>