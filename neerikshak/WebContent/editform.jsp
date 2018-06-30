<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>


<body>


<%@page import="com.neerikshak.*,com.neerikshak.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%  
String id=request.getParameter("id"); 
Officer u1=OfficerDao.getRecordById(id);  
%>
<!--officer edit form -->

  
<form action="updateoffcr" style="border:1px solid #ccc" class="container">
  
   <label><b>Id:</b></label>
    <input type="text"  name="id"  value="<%=id %>" readonly>
   	<label><b>Name:</b></label>
    <input type="text"  name="name"  value="<%=u1.getName() %>">
	<label><b>Mobile No:</b></label>
    <input type="text" name="mobile" value="<%=u1.getMobile() %>" >
    <label><b>Email</b></label>
    <input type="text"  name="email" value="<%=u1.getEmail() %>" >

    <label><b>Password</b></label>
    <input type="text"  name="pwd" value="<%=u1.getPwd() %>" >

   <%--  <label><b>Confirm Password</b></label>
    <input type="password" placeholder="Repeat Password" name="cpwd" value="<%=u.getId() %>" required> --%>
    
    <!-- <label><b>State:</b></label>
    <select name="State">
    <option value="karnataka">Karnataka</option>
    </select> -->
    
    
    
		<label class="control-label col-sm-2" >State:</label>
		<div class="col-sm-6">
			<select class="form-control" name="state" >
				<option>Karnataka</option>
				<option>Maharashtra</option>
			</select>
		</div>
		<div class="col-sm-4"></div>			
		<br>			
		<br>			
					
					
		<label class="control-label col-sm-2" >City:</label>
		<div class="col-sm-6">
			<select class="form-control" name="city" >
				<option>Bengaluru</option>
			</select>
		</div>
					
		<br>			
		<br>				
					
					
		<label class="control-label col-sm-2" >Area:</label>
		<div class="col-sm-6">
			<select class="form-control" name="area" >
				<option>Electronic City</option>
			</select>
		</div>
					
   		<br>			
		<br>	

    
      
    <br><button type="submit" class="signupbtn">Update</button>
    
  
</form>



</body>
</html>