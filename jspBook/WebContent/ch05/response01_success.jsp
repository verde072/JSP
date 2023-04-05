<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
</head>
<body>
	<%	//스크립틀릿
		//session.setAttribute("map", map);
		Map<String,String> map = (Map<String,String>)session.getAttribute("map");		
	%>
	<h3>로그인 성공!</h3>
	<h5><%=map.get("userId")%>님 환영합니다.</h5>
</body>
</html>


