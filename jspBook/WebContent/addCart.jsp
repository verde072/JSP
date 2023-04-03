<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
//from:product.jsp
//요청URI: addCart.jsp?id=P1234

	String id = request.getParameter("id");//P1234
	out.print("id: "+id);
%>