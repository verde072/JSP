<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

	<h3> <%=URLDecoder.decode(request.getParameter("title")) %></h3>
	<p>Today is: <%=request.getParameter("date") %></p>
	
