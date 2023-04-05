<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<p>오늘의 날짜 및 시간</p>
	<!-- 표현문 -->
	<!-- toLocaleString() 메소드 : 현재 Locale(지역)의 날짜를 얻어옴 -->
	<p><%=(new Date()).toLocaleString()%></p>
</body>
</html>



