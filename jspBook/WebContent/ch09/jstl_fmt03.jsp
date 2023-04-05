<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<h2>Internationalization</h2>
	<!-- 2023. 3. 29 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="date" /></p>
	<!-- 오후 5:30:24 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="time" /></p>
	<!-- 2023. 3. 29 오후 5:30:24 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both"
		dateStyle="default" timeStyle="default" /></p>
	<!-- 23. 3. 29 오후 5:33 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both"
		dateStyle="short" timeStyle="short" /></p>
	<!-- 2023. 3. 29 오후 5:33:19 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both"
		dateStyle="medium" timeStyle="medium"  /></p>
	<!-- 2023년 3월 29일 (수) 오후 5시 33분 19초 -->		
	<p><fmt:formatDate value="<%=new Date()%>" type="both"
		dateStyle="long" timeStyle="long" /></p>
	<!-- 2023년 3월 29일 수요일 오후 5시 33분 19초 KST -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both"
	 	dateStyle="full" timeStyle="full" /></p>
	<!-- 2023년03월29일 17시34분35초 수요일 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both"
		pattern="yyyy년MM월dd일 HH시mm분ss초 E요일" /></p>
</body>
</html>





