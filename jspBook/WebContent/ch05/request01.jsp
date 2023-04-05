<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
</head>
<body>
	<!-- request01_process.jsp?id=a001&passwd=java
	요청파라미터(HTTP파라미터, QueryString) : id=a001&passwd=java
	 -->
	<form action="request01_process.jsp" method="post">
		<!-- 폼 데이터 -->
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>




