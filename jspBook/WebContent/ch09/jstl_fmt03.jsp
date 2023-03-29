<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<h2> Internationalization</h2>
	<p><fmt:formatNumber value="<%=new Date() %>" type="date"/> </p>
	<p><fmt:formatNumber value="<%=new Date() %>" type="time"/> </p>
	<p><fmt:formatNumber value="<%=new Date() %>" type="both" 
		dateStyle="default" timeStyle="default"/></p>
	<p><fmt:formatNumber value="<%=new Date() %>" type="both" 
		dateStyle="short" timeStyle="short"/></p>
	<p><fmt:formatNumber value="<%=new Date() %>" type="both" 
		dateStyle="medium" timeStyle="medium"/></p>
	<p><fmt:formatNumber value="<%=new Date() %>" type="both" 
		dateStyle="long" timeStyle="long"/></p>
	<p><fmt:formatNumber value="<%=new Date() %>" type="both" 
		dateStyle="full" timeStyle="full"/></p>
	<p><fmt:formatNumber value="<%=new Date() %>" type="both" 
		pattern="yyyy년 MM월 dd일 HH시 mm분 ss초 E요일"/></p>
	
</body>
</html>