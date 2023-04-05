<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length; i++){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
			
		}
		response.sendRedirect("cookie02.jsp");
	%>
</body>
</html>