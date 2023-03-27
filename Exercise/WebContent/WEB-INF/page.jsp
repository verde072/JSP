<%@page import="java.util.Date"%>
<%@page import="java.lang.Math"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
<% Date date = new Date();%>
현재 날짜: <%=date %><br/>
5의 제곱 : <%=Math.pow(5,2) %>

</body>
</html>