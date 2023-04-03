<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!-- ㄴ>이걸 적어줘야 exception내장 객체를 사용할 수 있다.  -->
<!DOCTYPE html>
<html>
<head>
<title>정지은 쇼핑몰</title>
</head>
<body>
	<!-- isErrorPage
	- 기본은 false
	- true로 변경하면 exception 내장 객체를 사용할 수 있게 됨
	 -->

	<h2> 안녕 쟈긔 쉑더부리부리 여긴 오류페이지얌 </h2>
 	<!-- p.361 -->
 	<!-- exception : JSP에서 제공해주는 오류 처리용 기본 내장 객체 -->
 	<p>예외 유형          :<%=exception.toString() %> </p>
 	<p>예외 클래스 이름:<%=exception.getClass().getName()%> </p>
 	<p>오류 메시지       :<%=exception.getMessage()%> </p>
 
 
</body>
</html>