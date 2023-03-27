<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%
		Map<String,String> map=(Map<String,String>)session.getAttribute("map");
	%>
	<h3>로그인 성공!</h3>
	<h5><%=map.get("userId") %>님 환영합니다.</h5>
</body>
</html>