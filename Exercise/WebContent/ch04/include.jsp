<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
<h4>구구단 출력하기</h4>
	<jsp:include page="include_data.jsp">
		<jsp:param name="num" value='5'/>
	</jsp:include>
</body>
</html>