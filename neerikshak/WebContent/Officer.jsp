<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="styles.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Officer Profile</title>
</head>
<body>

  
<!--    navbar          -->
<nav class="navbar navbar-fixed-top navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#myPage">Neerikshak</a>
    </div>




    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
       	<!-- <li><a href="#menu1" class="glyphicon glyphicon-dashboard">View Officers</a></li>
      	<li><a class="glyphicon glyphicon-plus" href="#menu2">Add Officer</a></li>
        <li><a href="#menu3" class="glyphicon glyphicon-pencil">Edit Officer</a></li> -->
        <li><a class="glyphicon glyphicon-log-out" href="index.jsp">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

<br><br>	

<!--    div of officer          -->
<div class="container">
	<h1>Welcome Officer</h1>
  <hr>
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#home">Home</a></li>
    <li><a data-toggle="pill" href="#menu1">View New Queries</a></li>
    <li><a data-toggle="pill" href="#menu2">View Active Queries</a></li>
    
    <li><a data-toggle="pill" href="#menu3">Completed Queries</a></li>
    <li><a data-toggle="pill" href="#menu4">View All Queries</a></li>
  </ul>
  <hr>
  
  <%@ taglib uri="/struts-tags" prefix="s" %>  
  
  
  
  
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>Officer</h3>
      <p>officer
      Welcome to Profile, <s:property value="#session.area"/> 
      </p>
    </div>
    
    
    
    
    <div id="menu1" class="tab-pane fade">
      <h3>View New Queries</h3>
      
      <jsp:include page="new_queries.jsp"></jsp:include>
    </div>
    
    
    
    
    
    <div id="menu2" class="tab-pane fade">
      <h3>View Active Queries</h3>
      
      <jsp:include page="under_progress.jsp"></jsp:include>
    </div>
    
    
    
    
    
    
    
    
    
       <div id="menu3" class="tab-pane fade">
     <h3>View Completed Queries</h3>
      
      <jsp:include page="done_queries.jsp"></jsp:include>
    </div>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <div id="menu4" class="tab-pane fade">
       <h3>View All Queries</h3>
      
      <jsp:include page="all_queries.jsp"></jsp:include>
    </div>
    
    
    
  </div>
</div>


</body>
</html>