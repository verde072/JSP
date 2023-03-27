<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<p>아이디: <%=request.getParameter("id") %></p><!--admin  -->
	<p>이름: <%=URLDecoder.decode(request.getParameter("name")) %></p>
</body>
</html>