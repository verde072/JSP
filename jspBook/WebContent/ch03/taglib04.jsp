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
	/ch03/taglib04.jsp?dan=2
	param : dan=2
	 -->
	 [${param.dan}]
	 <c:set var="dan" value="${param.dan}" scope="page" />
	<!-- 
	2단 구구단을 출력해보자
	 -->	 
	<c:forEach var="j" begin="1" end="9" step="1">
		<p>${dan} x ${j} = ${dan * j}</p>	
	</c:forEach>
	<hr />
	<p>단 : ${pageScope.dan}</p>
	<hr />
	
	<c:forEach var="dan" begin="2" end="9" step="1">
		<p>[${dan}단]</p>
		<c:forEach var="num" begin="1" end="9" step="1">
			<p>${dan} x ${num} = ${dan * num}</p>
		</c:forEach>
	</c:forEach>
	
<!-- 	[2단] -->
<!-- 	2 x 1 = 2 -->
<!-- 	2 x 2 = 4 -->
<!-- 	... -->
	
<!-- 	[3단] -->
<!-- 	3 x 1 = 3 -->
<!-- 	3 x 2 = 6 -->
<!-- 	... -->
	
<!-- 	[9단] -->
<!-- 	.. -->
<!-- 	9 x 8 = 72 -->
<!-- 	9 x 9 = 81 -->
</body>
</html>


















