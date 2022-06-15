<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
</head>
<body>
   <%
   if(session.getAttribute("username") == null){
	   response.sendRedirect("Login.jsp");
   }
   %>
   <nav class="navbar">
          <ul class="navbar-nav">
          <li><a href="home.jsp">Home</a></li>
          <li><a href="addProduct.jsp">Add Product</a></li>
          <li><a href="viewProduct.jsp">View Product</a></li>
          <li><a href="searchProduct.jsp">Search Product</a></li>
          <li style="float:right; margin-right:10px"><a href="Logout.jsp">Logout</a></li>
          </ul>
   </nav>
</body>
</html>