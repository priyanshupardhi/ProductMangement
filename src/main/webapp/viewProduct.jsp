<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.ProductManagementDAO"%>
<%@page import="pojo.Product"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Product</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%@ include file="header.jsp" %>  

	<table align="center" class="productTable">
		<thead>
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Category</th>
				<th>Price</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		<%
			List<Product> productList = ProductManagementDAO.getAllProducts();
			for (Product p : productList) {
		%>
		<tr>
			<td><%=p.getProductId()%></td>
			<td><%=p.getProductName()%></td>
			<td><%=p.getProductCategory()%></td>
			<td><%= p.getProductPrice() %></td>
			<td><button class="actionBtn" onclick="location.href = 'editProduct.jsp?prodId=<%= p.getProductId()%>';">Edit</button></td>
			<td><button class="actionBtn" onclick="location.href = 'processDeleteProduct.jsp?prodId=<%= p.getProductId()%>';">Delete</button></td>
		</tr>

<%
}
%>
</table>


</body>
</html>