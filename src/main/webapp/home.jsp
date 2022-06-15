<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<!-- page is included at translation time -->
<%@ include file="header.jsp" %>

<%  String name = (String)session.getAttribute("username"); %>
</body>
<div align="center">
<h1><b>Online Store</b></h1>
<label><h1><b>Welcome <%= name %></b></h1></label>
</div>

</html>
