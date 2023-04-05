<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.net.URLDecoder"%>
<!-- param02_data.jsp?title=지금시간&date=2023-03-2115:15 -->
<h3><%=URLDecoder.decode(request.getParameter("title"))%></h3>
Today is : <%=request.getParameter("date")%>