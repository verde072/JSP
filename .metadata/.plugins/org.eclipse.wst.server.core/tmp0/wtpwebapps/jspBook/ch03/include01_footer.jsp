<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.net.URLDecoder"%>
<%
//요청파라미터 : ?memId=개똥이
request.setCharacterEncoding("UTF-8");
String memId = request.getParameter("memId");	//개똥이
memId = URLDecoder.decode(memId);
%>
Copyright <%=memId%>


