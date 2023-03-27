<%@page import="java.util.Enumeration"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <p>선택한과일</p>
<%
	request.setCharacterEncoding("UTF-8");
	String[] fruit = request.getParameterValues("fruit");
	for(String str: fruit ){
		out.print("<p>"+str+"</p>");
	}
%>