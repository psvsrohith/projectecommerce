<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>project</title>
	<link rel="stylesheet"  href="./style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	<script>
	function changeDetails(ka)
	{
		document.write(ka);
	}
	</script>
	<style>
		.center {
  			display: block;
  			margin-left: auto;
  			margin-right: auto;
		}	
	</style>
</head>
<body style="background-color:#FFD523">
    <%@ include file="header.jsp" %>
    
    <div class="container" >
    <br><br>
		  <div class="row">
		    <div class="col-sm">
		    	<figure>
		      		<a href="display.jsp?id=realme"><img class="center"  src="https://cpng.pikpng.com/pngl/s/555-5552688_realme-is-a-shenzhen-based-chaines-smartphone-manufacturer.png" height="75px" width="75px"></a>
		    		<figcaption style="text-align:center;">realme</figcaption>
		    	</figure>
		    </div>
		    <div class="col-sm">
		     	<figure>
		      		<a href="display.jsp?id=mi"><img class="center"  src="https://icon2.cleanpng.com/20180729/wz/kisspng-xiaomi-mi-a1-smartphone-internet-business-xiaomi-logo-5b5d3d831162e9.0024346515328372510712.jpg" height="75px" width="75px"></a>
		    		<figcaption style="text-align:center;">mi</figcaption>
		    	</figure>
		    </div>
		    <div class="col-sm">
		      	<figure>
		      		<a href="display.jsp?id=vivo"><img class="center"  src="https://banner2.cleanpng.com/20180604/vvq/kisspng-logo-vivo-company-huawei-smartphone-smartphone-vector-5b15e316ee7c87.3906233515281610469769.jpg" height="75px" width="75px"></a>
		    		<figcaption style="text-align:center;">vivo</figcaption>
		    	</figure>
		    </div>
		    <div class="col-sm">
		      	<figure>
		      		<a href="display.jsp?id=samsung"><img class="center"  src="https://c7.uihere.com/files/249/566/482/samsung-i8000-samsung-galaxy-logo-samsung-electronics-samsung.jpg" height="75px" width="75px"></a>
		    		<figcaption style="text-align:center;">samsung</figcaption>
		    	</figure>
		    </div>
		    <div class="col-sm">
		      	<figure>
		      		<a href="display.jsp?id=iphone"><img class="center" src="https://toppng.com/uploads/preview/iphone-iphone-logo-png-transparent-11563268272bfdx8adhya.png" height="75px" width="75px"></a>
		    		<figcaption style="text-align:center;">iphone</figcaption>
		    	</figure>
		    </div>
		    <div class="col-sm">
		      	<figure>
		      		<a href="display.jsp?id=infinix"><img class="center" src="https://w7.pngwing.com/pngs/624/747/png-transparent-infinix-hot-s3-infinix-mobile-smartphone-infinix-hot-4-pro-android-tablet-smart-screen-gadget-electronics-mobile-phone.png" height="75px" width="75px"></a>
		    		<figcaption style="text-align:center;">infinix</figcaption>
		    	</figure>
		    </div>
		  </div>
	</div>
	<br><br>
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="background-color:#C9D8B6">
	<br><br>
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <div class="container">
  					<div class="row">
  						<div class="col-sm">
    							<figure>
									  <a href="redirect.jsp?id=P0001"><img class="center" src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" alt="Los Angeles" style="height:300px;width:50%;"></a>
									  <figcaption style="text-align:center;">phone 1</figcaption>
								</figure>
						</div>
   						<div class="col-sm">
     							<figure>
									  <img class="center" src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" alt="Los Angeles" style="height:300px;width:50%;">
									  <figcaption style="text-align:center;">phone 1</figcaption>
								</figure>
    					</div>
	    				<div class="col-sm">
	      						<figure>
									  <img class="center" src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" alt="Los Angeles" style="height:300px;width:50%;">
									  <figcaption style="text-align:center;">phone 1</figcaption>
								</figure>
	    				</div>
  					</div>
			</div>
      </div>

      <div class="carousel-item">
         <div class="container">
  					<div class="row">
    					<div class="col-sm">
      							<figure>
									  <img class="center" src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" alt="Los Angeles" style="height:300px;width:50%;">
									  <figcaption style="text-align:center;">phone 1</figcaption>
								</figure>
    					</div>
   						<div class="col-sm">
     							<figure>
									  <img class="center" src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" alt="Los Angeles" style="height:300px;width:50%;">
									  <figcaption style="text-align:center;">phone 1</figcaption>
								</figure>
    					</div>
	    				<div class="col-sm">
	      						<figure>
									  <img class="center" src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" alt="Los Angeles" style="height:300px;width:50%;">
									  <figcaption style="text-align:center;">phone 1</figcaption>
								</figure>
	    				</div>
  					</div>
			</div>
      </div>
      <div class="carousel-item">
         <div class="container">
  					<div class="row">
    					<div class="col-sm">
      							<figure>
									  <img class="center" src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" alt="Los Angeles" style="height:300px;width:50%;">
									  <figcaption style="text-align:center;">phone 1</figcaption>
								</figure>
    					</div>
   						<div class="col-sm">
     							<figure>
									  <img class="center" src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" alt="Los Angeles" style="height:300px;width:50%;">
									  <figcaption style="text-align:center;">phone 1</figcaption>
								</figure>
    					</div>
	    				<div class="col-sm">
	      						<figure>
									  <img class="center" src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" alt="Los Angeles" style="height:300px;width:50%;">
									  <figcaption style="text-align:center;">phone 1</figcaption>
								</figure>
	    				</div>
  					</div>
			</div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <br><br>
  </div>
	<%@ include file="footer.jsp" %>
<script src="./script.js"></script>	
   
</body>
</html>