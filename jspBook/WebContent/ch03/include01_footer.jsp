<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
//요청파라미터: ?memId=개똥이
request.setCharacterEncoding("UTF-8");
String memId=request.getParameter("memId");
memId=URLDecoder.decode(memId);
%>
Copyright <%=memId%>