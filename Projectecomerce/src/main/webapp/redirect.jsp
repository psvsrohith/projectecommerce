<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
	<title>project</title>
	<link rel="stylesheet" type="text/css" href="./style.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width initial-scale=1.0 shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body id="properties">
	<%
		String productid= request.getParameter("id");
		session.setAttribute("welcome2",productid);
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=utf8","root","rohith");
		PreparedStatement stmt=conn.prepareStatement("select * from products where Product_Id=?");
		stmt.setInt(1, 1);
		stmt.setString(1,productid);
		ResultSet res=stmt.executeQuery();	
		if(res.next())
		{}
		
	%>
  <%@ include file="header.jsp" %>
  <div class="container">
  	 <div class="row">
    	<div class="col-sm">
      		<br><br><img src="https://m.media-amazon.com/images/I/71dujTTJDZL._AC_UY218_.jpg" width="300px" height="600px" style="padding-left:100px;"> 
    	</div>
    	<div class="col-sm">
    		<div>       
    					<br><br><br>
    					4.46,62,594 Ratings & 49,306 Reviews<br>
						Extra ?1200 discount<br>
						?9,799?10,99910% off<br>
						Available offers<br>
						Bank OfferFlat ?30 discount on first prepaid transaction using RuPay debit card, minimum order value ?750/T&C<br>
						Bank Offer?30 Off on first prepaid transaction using UPI. Minimum order value ?750/-T&C<br>
			</div>
			<div>
				Bank OfferFlat ?75/- off on RuPay debit card purchase above ?7,500/-T&C<br>
				Bank OfferFlat ?75 discount on UPI transaction above ?10,000/-T&C<br>
				View 5 more offers<br>
				Brand Warranty of 1 Year Available for Mobile and 6 Months for AccessoriesKnow More
			</div>
			<div>
				<br><br>
				Enter Delivery Pincode <br><input class="address" style="border:none;size:10px;" type="text" placeholder="Address">
				<br><br><br><br>
	     	</div>
    	</div>
    	
	     	
     </div>
     <div class="row">
     	 <div class="col-sm">
	     	<br><br><div style="padding-left:6%;padding-top:2%;font-family:verdana;font-size:30px;color:orange;"><%=res.getString("Product_Name") %></div>
	     </div>
	     
	  </div>
	  <div class="row">
	  	<div class="col-sm">
	       <br><br> <span style="border-bottom:2px;font-family:verdana;font-size:30px">MRP:<%=res.getString("Amount") %></span><i class="bi bi-heart"></i><br>
	    </div>
	  </div>
	  <div class="row">
		  <div class="col-sm">
		    <br><br>	<button class="button" style="margin-left:30px;" onclick="dummy()">BUY NOW </button>
	    		<form action="servlet4" method="post">
    				<button class="button" style="margin-left:40px;">ADD TO CART</button>
				</form><br><br>
			</div>
	  </div> 
  </div>
  <%@ include file="footer.jsp" %>
  <%stmt.close();
	conn.close(); %>
	<script src="script.js"></script>	
</body>
</html>
