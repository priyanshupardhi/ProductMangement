<%@page import="dao.ProductManagementDAO"%>
<%@page import="pojo.Product"%>

<%

String productId = request.getParameter("prodId");
String productName = request.getParameter("prodName");
String productCategory = request.getParameter("prodCategory");
Integer productPrice = Integer.parseInt(request.getParameter("prodPrice"));

Product product = new Product(productId,productName,productCategory,productPrice);

int status = ProductManagementDAO.addProduct(product);
if(status == 1)
{
	response.sendRedirect("viewProduct.jsp"); 
}
else
{
	response.sendRedirect("error.jsp"); 
}

%>