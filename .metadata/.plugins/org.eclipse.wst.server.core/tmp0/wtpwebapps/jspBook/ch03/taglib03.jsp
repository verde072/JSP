<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
taglib 디렉티브, prefix속성의 값은 c  
jstl 1.2 jar를/WEB-INF/lib/jstl-1.2.jar
JSTL: JSP 태그 중에서 자주 사용되는 핵심 기능에 해당하는 태그를 모아놓은 라이브러리
-->
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
<!--
JSTL:JSP Standard Tag Library
	-jsp에서 자주 활용되는 컴포넘트들을 모아놓은 라이브러리 
	
	scope: 영역
	page: 동일 jsp내에서 변수를 공유
	request: 동일 요청 내에서 변수를 공유
	session: 동일 웹브라우저 내에서 변수를 공유
	application: 웹브라우저 내에서 변수를 공유
	
 -->
	<c:set var="num1" value="5" scope="page"/>
	<c:set var="num2" value="7" scope="session"/>
	<c:set var="num3" value="9" scope="application"/>
	<c:set var="result" value="${num1*num2}"/>
	<p>${num1}과 ${num2}의 곱은 ${result}임</p>
	<p>JSTL 변수 num3의 값은 ${num3}임</p>
	<hr/>
	<!--
		gt:greater than 크다
		lt:less than 작다
		ge:greater than or equal 이상
		le:less than or equal 이하 
		
		
		  -->
	<c:if test="${num3>10 }">10 초과입니다.</c:if>
	<c:if test="${num3 gt 10 }">10 초고입니다.</c:if>
	<c:if test="${num3<=10 }">10 이하입니다.</c:if><!--num3은 9니까 얘가 출력  -->
	<c:if test="${num3 le 10 }">10 이하입니다.</c:if><!--num3은 9니까 얘가 출력  -->
	<hr/>
	<c:set var="score" value="9"/>
	<c:choose>
		<c:when test="${score==1 }">10점</c:when>
		<c:when test="${score==2 }">20점</c:when>
		<c:when test="${score==3 }">30점</c:when>
		<c:when test="${score==4 }">40점</c:when>
		<c:when test="${score==5 }">50점</c:when>
		<c:when test="${score==6 }">60점</c:when>
		<c:when test="${score==7 }">70점</c:when>
		<c:when test="${score==8 }">80점</c:when>
		<c:when test="${score==9 }">90점</c:when>
		<c:otherwise>100점</c:otherwise>
	</c:choose>
</body>
</html>