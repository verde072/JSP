<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%
	String num1="3";
	
	Integer.parseInt(num1);
	
	num1.toString().substring(3);
	
	%>
	<h1>Today is <%=new Date() %></h1> <!-- util import되어있으니까 그냥 Date만 써도 된다 -->
</body>
</html>