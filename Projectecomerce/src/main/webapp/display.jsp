<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page import="java.io.ByteArrayOutputStream,java.io.IOException,java.io.InputStream,java.sql.Blob,java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet,java.sql.SQLException,java.util.Base64"%>
<title>Insert title here</title>
</head>
<body>
    <%@ include file="header.jsp" %>
	<%
		
		Class.forName("com.mysql.jdbc.Driver");
    	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=utf8","root","rohith");
    	String brand= request.getParameter("id");
		PreparedStatement pst = conn.prepareStatement("select * from products where product_name like ?") ;
		pst.setString(1,"%"+brand+"%");
		ResultSet rs=pst.executeQuery();
	%>
	<% 
	while(rs.next())
	{%>
		<div class="row">
  			<div class="col">
  						<%
  							Blob blob = rs.getBlob("phone_image");
							InputStream inputStream = blob.getBinaryStream();
							ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
							byte[] buffer = new byte[4096];
							int bytesRead = -1;
							while ((bytesRead = inputStream.read(buffer)) != -1)
				   				 outputStream.write(buffer, 0, bytesRead);
							byte[] imageBytes = outputStream.toByteArray();
							String base64Image = Base64.getEncoder().encodeToString(imageBytes);
  						%>
  					<div><%= rs.getString("Product_name")%></div>
  					<div><%=rs.getDouble("amount")%></div>
  				
  			</div>
  			<%
  			if(rs.next())
  			{%>
  				<div class="col">
  					<%
  						blob = rs.getBlob("phone_image");
  						inputStream = blob.getBinaryStream();
  						outputStream = new ByteArrayOutputStream();
  						buffer = new byte[4096];
  						bytesRead = -1;
  						while ((bytesRead = inputStream.read(buffer)) != -1)
  				   			 outputStream.write(buffer, 0, bytesRead);
  						imageBytes = outputStream.toByteArray();
  						base64Image = Base64.getEncoder().encodeToString(imageBytes);
  					%>
  					<div><%= rs.getString("Product_name")%></div>
  					<div><%=rs.getDouble("amount")%></div>
  				</div>	
  			<%
  			} %>
  			<div class="w-100"></div>
		</div>
	<% 
	}%>
</body>
</html>