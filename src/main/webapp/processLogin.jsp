<%@page import="dao.LoginDAO" %>
<%@page import="pojo.LoginInfo" %>

<%
 String username = request.getParameter("username");
 String password = request.getParameter("password");
 
 if(LoginDAO.isUserValid(new LoginInfo(username, password))){
	 session.setAttribute("username", username);
	 session.setMaxInactiveInterval(30);
	 response.sendRedirect("home.jsp");
 }
 else{
	 response.sendRedirect("LoginFailed.jsp");
 }
%>