<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%	//스크립트 태그 
		response.setIntHeader("Refresh",5000);
	%>
	<p>현재시간은 <%=Calendar.getInstance().getTime()%></p>
	<p><a href="response_data.jsp"> Google 홈페이지로 이동하기  </a></p>
</body>
</html>