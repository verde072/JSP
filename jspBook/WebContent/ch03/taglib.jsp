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
	- 조건문, 반복문, 국제화 / 지역화, 숫자처리, 날짜처리
	
	var : 변수
	1부터 10까지 1씩 증가
	
	
 -->
	<c:forEach var="k" begin="1" end="10" step="1">
		<!-- JSTL 변수 k의 값을 출력 -->
		<p>${k}</p>
	</c:forEach>
	<hr />
	<c:forEach var="i" begin="1" end="10" step="1">
		<!-- i변수의 값을 2로 나눈 나머지가 0일 때만 출력(짝수) -->
		<c:if test="${i%2==0}">
			<c:out value="${i}" />&nbsp;
		</c:if>
	</c:forEach>
</body>
</html>














