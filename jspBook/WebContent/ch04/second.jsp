<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<h3>이 파일은 second.jsp입니다.</h3>
	<!-- second.jsp?date=2023-03-21 -->
	Today is : <%=request.getParameter("date")%>
</body>
</html>



