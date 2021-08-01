<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>project</title>
		<meta name="viewport" content="width=device-width initial-scale=1.0 shrink-to-fit=no">
		<link rel="stylesheet"  href="./style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
<body>
	<%
		response.setHeader("Cache-Control" , "no-cache,no-store,must-revalidate");
		if(session.getAttribute("welcome")==null)
			response.sendRedirect("index.jsp");
	%>

  <%@ include file="header.jsp" %>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  	<br><br>
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://f0.pngfuel.com/png/158/1013/gold-number-20-illustration-png-clip-art-thumbnail.png 
      " height="400px" width="60%" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://www.pngfind.com/pngs/m/207-2072647_tablets-png-phones-and-tablets-png-transparent-png.png
      " height="400px" width="60%" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://w7.pngwing.com/pngs/658/368/png-transparent-blue-background-with-special-offer-text-overlay-discounts-and-allowances-sales-promotion-price-tag-advertising-offers-miscellaneous-text-logo.png" 
      height="400px" width="60%" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" data-bs-target="#carouselExampleDark" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" data-bs-target="#carouselExampleDark" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <br><br>
</div>
<div id="dis">
<div class="container">
 	<div class="row">
    	<div class="col-sm">
      		<img src="https://w7.pngwing.com/pngs/655/978/png-transparent-motorola-moto-g4-plus-moto-g5-4g-android-gadget-mobile-phone-mobile-phones.png" height="400px" width="85%"/>
    	</div>
    	<div class="col-sm">
     			<img src="https://w0.pngwave.com/png/77/285/iphone-8-plus-iphone-7-plus-iphone-5-iphone-x-iphone-6s-iphone-apple-png-clip-art.png" height="400px" width="85%"/>
    	</div>
   		<div class="col-sm">
      			<img src="https://f0.pngfuel.com/png/190/838/womens-pink-and-yellow-long-sleeve-dress-childrens-clothing-winter-clothing-graphy-children-fall-and-winter-clothes-png-clip-art.png" height="400px" width="85%"/>
   		</div>
  	</div>
</div>
</div>
  <%@ include file="footer.jsp" %>
</body>
</html>