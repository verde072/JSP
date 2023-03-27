<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
<c:forEach var="i" begin="1" end="10" step="1">
 		<c:if test="${i%2==0}">
	 		<c:out value="${i}" />&nbsp;
 		</c:if>
 	</c:forEach>
</body>
</html>