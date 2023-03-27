<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<h3>param 액션 태그 </h3><!--buffer에서 사라짐  -->
	<!--요청이 param01_data.jsp로 변경되어 흐름   -->
	<!--param01_data.jsp?id=admin&name=개똥이 -->
	<jsp:forward page="param01_data.jsp">
		<jsp:param name="id" value="admin"/>
		<jsp:param name="name" value='<%=URLEncoder.encode("개똥이") %>'/>
	</jsp:forward>
	<p>Java Server Page</p><!--읽히지 않을것임  -->
</body>
</html>