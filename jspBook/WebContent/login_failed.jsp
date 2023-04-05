<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% //스크립틀릿
	//JSP 내장객체 : pageContext, request, session, application, response, out..
	//sendRedirect("URI경로") : URI경로로 재요청
	response.sendRedirect("/login.jsp?error=1");
%>