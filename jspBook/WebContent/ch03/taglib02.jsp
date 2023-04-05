<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- taglib디렉티브. prefix속성의 값은 c 
jstl-1.2.jar를 /WEB-INF/lib/jstl-1.2.jar
JSTL : JSP 태그 중에서 자주 사용되는 핵심 기능에 해당하는 태그를 모아놓은 라이브러리
-->
<!DOCTYPE html>
<html>
<head>
<title> 쇼핑몰</title>
</head>
<body>
<!-- 
JSTL : JSP Standard Tag Library
	- jsp에서 자주 활용되는 컴포넌트들을 모아놓은 라이브러리
 -->
 	<%
 		int num1 = 7;
 	%>
 
 	<!-- JSTL변수 다루기 -->
	<c:set var="num1" value="5" />
	<!-- JSP의 num1변수의 값 7을 JSTL 변수 num2에 할당 -->
	<c:set var="num2" value="<%=num1%>" />
	
	<!-- num1은 JSP영역의 변수라서 JSTL변수와 다름 -->
	<p>JSP의 변수 : <%=num1%></p>
	<p>JSTL의 변수     ${num1}</p>
	<p>JSTL의 변수(JSP의 num1의 값을 할당받음) : ${num2}</p>
</body>
</html>














