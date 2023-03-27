<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<% int num=Integer.parseInt(request.getParameter("num")); %>
	<%for(int i=1; i<=9; i++){%>
		<%=i +"x"+ num +"="+ i*num %><br/>
	<%} %>
</body>
</html>