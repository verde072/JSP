<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!-- 오류 발생 시 page디렉티브의 errorPage속성의 값으로 설정된 오류처리 jsp를 요청함
isErrorPage="true" => 이 jsp는 오류전용 jsp임 => exception 내장 객체를 사용할 수 있게됨
 -->
<!DOCTYPE html>
<html>
<head>
<title> 쇼핑몰</title>
</head>
<body>
	<!-- /images : WebContent > images 폴더 -->
	<img src="/images/error.png" />
	<br />
	<%
		exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>