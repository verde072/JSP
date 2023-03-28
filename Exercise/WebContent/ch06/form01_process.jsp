<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String addr = request.getParameter("addr");
String mail = request.getParameter("mail");

%>
<p>name: <%=name%></p>
<p>addr: <%=addr%></p>
<p>mail: <%=mail%></p>