<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<!-- 폼 페이지 
	session01_process.jsp?id=admin&passwd=java
	-->
	<!-- .setAttribute("userId", user_id); -->
	<h3>${sessionScope.userId}</h3>
	<h3>${applicationScope.userId}</h3>
	<form action="session01_process.jsp" method="post">
		<!-- 폼 데이터 -->
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
	<hr />
	<form action="session01_process2.jsp" method="post">
		<!-- 폼 데이터 -->
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>




