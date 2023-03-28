<%@page import="java.util.Enumeration"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String addr = request.getParameter("addr");
String mail = request.getParameter("mail");

%>

	<%
		//스클립틀릿
		//모든 입력 양식의 요청 파라미터 이름을 순서에 상관없이
		//Enumeration(열거형) 형태로 전달받음 
		Enumeration paramNames = request.getParameterNames();
		//hasMoreElements: 열거형 요소가 있으면 true
		while (paramNames.hasMoreElements()) {
			//id,name..
			String paramName = (String) paramNames.nextElement();
			out.print(paramName+":" );
			String paramValue=request.getParameter(paramName);
			out.print(paramValue+"<br/>");
	}
	%>