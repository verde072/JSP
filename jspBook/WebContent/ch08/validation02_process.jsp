<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	%>
	<p>아이디:<%=id%></p>
	<p>비밀번호:<%=passwd%></p>
	<c:set var="pageId" value="<%=id%>" scope="page" />
	<!-- 동일 jsp -->
	<c:set var="requestId" value="<%=id%>" scope="request" />
	<!-- 동일 요청 -->
	<c:set var="sessionId" value="<%=id%>" scope="session" />
	<!-- 동일 웹브라우저 -->
	<c:set var="applicationId" value="<%=id%>" scope="application" />
	<!-- 모든 웹브라우저 -->
	<jsp:forward page="validation02_process2.jsp"></jsp:forward>
</body>
</html>