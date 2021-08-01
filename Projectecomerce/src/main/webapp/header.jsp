<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>
<body>
<div id="indexnav">
	<nav class="navbar navbar-expand-lg navbar-light" class="navbar">
		<div class="container" class="headerrow">
		  <div class="row">
		    <div class="col-sm">
		      	<img src="data:image/jpeg;base64,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" height="40px" width="90px">
		    </div>
		    <div class="col-sm">
		      	<input type="text" class="search" placeholder="search.."><button type="submit" onclick="dummy()"><i class="fa fa-search"></i></button>		
		    </div>
		    <div class="col-sm">
		      	<form action="servlet3" method="post">
    		 		<button type="submit">logout</button>
    		 	</form>
		    </div>
		    <div class="col-sm">
		      	<%
				String name=(String)session.getAttribute("welcome");
				%>
				<%=name%>
		    </div>
		    <div class="col-sm">
		      	<a href="cart.jsp"><i class="bi bi-cart-check-fill"></i></a>
		    </div>
		  </div>
		</div>
  
  
   
	</nav>
</div>
<div id="list">
	<nav class="navbar navbar-expand-lg navbar-light" class="navbar">

  <button class="navbar-toggler" type="button" data-toggle="collapse"  data-target="#navbarNav1" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav1">
  
    <ul class="navbar-nav ml-auto"  class="nav nav-pills">
      <li><a href="mobile1.jsp">Mobile</a></li>
      <li><a  onclick="dummy()">TV and Appliances</a></li>
      <li><a  onclick="dummy()">Men</a></li>
      <li><a  onclick="dummy()">Women</a></li>
      <li><a  onclick="dummy()">Baby and kids</a></li>
      <li><a  onclick="dummy()">home appliances</a></li>

	</ul>
  	</div>
	</nav>
</div>
</body>
</html>