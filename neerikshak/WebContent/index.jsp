<!DOCTYPE html>

<html lang="en">
<head>

  <title>Neerikshak</title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="icon" href="images/baba.png" sizes="32x32">

  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Pontano+Sans" rel="stylesheet">


	

  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 
<!--    script for getting date-->
<script>
	$(document).ready(function(){
	
	var d = new Date();

	var month = d.getMonth()+1;
	var day = d.getDate();

	var output = d.getFullYear() + '/' +
    ((''+month).length<2 ? '0' : '') + month + '/' +
    ((''+day).length<2 ? '0' : '') + day;
	
	
	$("#fixeddate").val(output);
	});
</script>


<!--    script for query animation-->
<script>
	$(document).ready(function(){
		$("#camera1").click(function(){
			$("#query").fadeOut(function(){
				$("#choice").fadeIn();
			});
		});

    $('#complaint_upload').click(function(){
      $('#myModal').show();
    });
	
	});


</script>





<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

  // Make sure this.hash has a value before overriding default behavior
  if (this.hash !== "") {

    // Prevent default anchor click behavior
    event.preventDefault();

    // Store hash
    var hash = this.hash;

    // Using jQuery's animate() method to add smooth page scroll
    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 900, function(){

      // Add hash (#) to URL when done scrolling (default click behavior)
      window.location.hash = hash;
      });
    } // End if
  });
})
</script>

<!--    script for sliding effect-->
<script>
$(window).scroll(function() {
  $(".slideanim").each(function(){
    var pos = $(this).offset().top;

    var winTop = $(window).scrollTop();
    if (pos < winTop + 600) {
      $(this).addClass("slide");
    }
  });
});


</script>
</head>






<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">



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
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#query">POST YOUR PROBLEM</a></li>
		<li><a href="#about">ABOUT</a></li>
        <li><a href="#contact">CONTACT</a></li>
        <li><a href="#login">LOGIN</a></li>
      </ul>
    </div>
  </div>
</nav>





<!--    carousel          -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" >
      <div class="item active">
        <img src="images/1.jpg" alt="image1" >
      </div>

      <div class="item">
        <img src="images/2.jpg" alt="image2" >

      </div>

      <div class="item">
        <img src="images/4.jpg" alt="image4" >
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>





<!--    upload query          -->
<div id="query" class="container-fluid text-center">

<h1>POST YOUR COMPLAINT</h1>
<br>
<img id="camera1" class="img-responsive slideanim" src="images/8.jpg" alt="camera">





<br>
<br>
</div>




<!--    hidden div of aftermath of query div          -->
<div id="choice" style="display:none;">
	<div id="pricing" class="container-fluid">
  <div class="text-center">
    <h1>Choose Your Upload Method</h1>

  </div>
  <div class="row">
  <div class="col-sm-4"></div>
    <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>UPLOAD</h1>
        </div>
        <div class="panel-body">
          <img src="images/upload.png" alt="upload" id="complaint_upload" height=150px; width=200px;/>
          <br>
          <br>
          <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#uploadModal">UPLOAD</button>
        </div>

      </div>
    </div>
   
       <div class="col-sm-4"></div>
  </div>
	</div>
</div>




<!--modal for upload-->

<div class="modal fade" id="uploadModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
    <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Upload</h4>
        </div>
		
		
		
        <div class="modal-body"  role="dialog">
         <div class="modal-dialog">
        	<center>
			<form action="imgup"  method="post" enctype="multipart/form-data">
				<div class="form-group">
				Date:<input type="text" id="fixeddate" name="date" /><br><br>
				
				State:<select name="state">
					<option>Karnataka</option>
				</select>	<br><br>
				
				City:<select name="city">
					<option>Bengaluru</option>
				</select><br><br>
					
				Area:<select name="area">
					<option>Electronic City</option>
				</select><br><br>
					
				Landmark:<input type="text" name="landmark"><br><br>
				
				Problem Type:<select name="Query_For">
					<option>Broken Road</option>
				</select><br><br>
				
				Solution:<select name="Suggested_Solution">
					<option>Repair</option>
				</select><br><br>
				
				<input type="file" name="images"/><br><br>
				
			    <input type="submit"/>
			    </div>
			</form>
			</center>
			
				<%--  <s:form action="imgup"  method="post" enctype="multipart/form-data"> 
				 	<s:textfield name="date" label="Date" id="fixeddate" ></s:textfield>
					<s:select cssStyle="width:155px;" list="{'karnataka'}"  
					name="state" label="State"></s:select>			
					<s:select cssStyle="width:155px;" list="{'Bengaluru'}"  
					name="city" label="City"></s:select>			   
					<s:select cssStyle="width:155px;" list="{'Electronic City'}"  
					name="area" label="Area"></s:select>			  
					<s:textfield name="landmark" label="Landmark"></s:textfield>				
					<s:select cssStyle="width:155px;" list="{'broken road'}"  
					name="Query_For" label="Problem Type"></s:select>  
					<s:select cssStyle="width:155px;" list="{'broken road'}"  
					name="Suggested_Solution" label="Solution Suggested"></s:select>  
					<s:file name="images" label="Image" />  
					<s:submit value="Upload"></s:submit>  
				  
				</s:form>   
		 --%>
	
		</div>	
        </div>
		
		
		
		
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>

    </div>
</div>
























<!--modal for admin-->

<div class="modal fade" id="adminModal" role="dialog">
    <div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Admin Login</h4>
			</div>
        <div class="modal-body">
				
				<form class="form-horizontal" action="adminlogin" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">Email:</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" placeholder="Enter email" name="username">
						</div>
					</div>
					
					
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">Password:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
						</div>
					</div>
					
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label><input type="checkbox" name="remember"> Remember me</label>
							</div>
						</div>
					</div>
					
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">Submit</button>
						</div>
					</div>
				</form>
			

		</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
				
				
		</div>

    </div>
</div>



<!--modal for officer login-->
<div class="modal fade" id="officerModal" role="dialog">
    <div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Officer Login</h4>
			</div>
        <div class="modal-body">

				<form class="form-horizontal" action="officerlogin" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">Email:</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" placeholder="Enter email" name="username">
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="area">Area:</label>
						<div class="col-sm-10">
							<select class="form-control" id="selectarea" name="area">
								<option>Electronic City</option>
							</select>
						</div>
					</div>
					
					
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">Password:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
						</div>
					</div>
					
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label><input type="checkbox" name="remember"> Remember me</label>
							</div>
						</div>
					</div>
					
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">Submit</button>
						</div>
					</div>
				</form>
			

		</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
				
				
		</div>

    </div>
</div>










<!--    about          -->
<div id="about" class="container text-center slideanim">

		<div class="col-sm-2">
			<img src="images/tree.png" class="img-responsive"/>
		</div>
		<div class="col-sm-10 text-left">
		  <h1>NEERIKSHAK</h1>
		  <p><em>We love music!</em></p>
		  <p>We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		  <br>
		</div>

</div>










<!--    contact          -->
<div id="contact" class="container-fluid text-center slideanim">
<br>
<br>
		
		<div class="col-sm-10 text-right">
		<h1>CONTACT US</h1>
		<p><em>We love music!</em></p>
		<p>We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		</div>
		<div class="col-sm-2">
			<img src="images/contactus.png" class="img-responsive"/>
		</div>
</div>


<!--    div of officer and admin          -->
<div id="login" class="container-fluid text-center">
<h1>LOGIN</h1>
  <br/>
<div class="row">
<div class="col-sm-2"></div>
  <div class="col-sm-4">
    <div class="panel panel-default text-center">
      <div class="panel-heading">
        <h1>ADMIN</h1>
      </div>
      <div class="panel-body">
        <img src="images/admin.png" alt="upload" id="complaint_upload" height=150px; width=200px;/>
        <br>
        <br>
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#adminModal">LOGIN</button>
      </div>

    </div>
  </div>
  <div class="col-sm-4">
    <div class="panel panel-default text-center">
      <div class="panel-heading">
        <h1>OFFICER</h1>
      </div>
      <div class="panel-body">
        <img src="images/officer.png" alt="click" height=150px; width=200px; />
        <br>
        <br>
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#officerModal">LOGIN </button>
      </div>

    </div>
  </div>
     <div class="col-sm-2"></div>
</div>
</div>













<!-- Footer -->
<footer class="text-center slideanim">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Neerikshak!!</p>
</footer>



</body>
</html>
