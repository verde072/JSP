<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
</head>
<body>
	<!-- 요청URI validation02_process.jsp?id=a001&passwd=java 
		요청파라미터(Http파라미터, QueryString) : id=a001&passwd=java
		요청방식 : post
	-->
	<% //스크립틀릿
		//문자 인코딩 유형 처리
		request.setCharacterEncoding("UTF-8");
		//request내장객체. 
		//JSP 내장 객체(pageContext, request, response, session, application, out..)
		//          달러{pageScope.속성명},  달러{requestScope.속성명}, 달러{sessionScope.속성명}
		//			달러{applicationScope.속성명}
		String id = request.getParameter("id");	//a001
		String passwd = request.getParameter("passwd");	//java 
	%>
	<p>아이디 : <%=id%></p>
	<p>비밀번호 : <%=passwd%></p>
	<c:set var="pageId" value="<%=id%>" scope="page" /><!-- 동일 jsp -->
	<c:set var="requestId" value="<%=id%>" scope="request" /><!-- 동일 요청 -->
	<c:set var="sessionId" value="<%=id%>" scope="session" /><!-- 동일 웹브라우저(로그인) -->
	<c:set var="applicationId" value="<%=id%>" scope="application" /><!-- 모든 웹브라우저 -->
	
	<!-- JSP 액션 태그 -->
	<jsp:forward page="validation02_process2.jsp"></jsp:forward>
</body>
</html>








