<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<!--
	요청URI: response01_process.jsp?id=a001&passwd=java
	요청파라미터(HTTP파라미터, QueryString): id=a001@passwd=java
	  -->
	<form action="response01_process.jsp" method="post">
	<!--폼 데이터  -->
		<p>아이디: <input type="text" name="id" required /></p>
		<p>비밀번호: <input type="text" name="passwd" required /></p>
		<p><input type="submit" value="전송" /></p>
		
	</form>
</body>
</html>