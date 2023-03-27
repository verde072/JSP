<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<h2>Implicit Object(내장 객체)</h2>
	<%
		//모든 헤더의 이름을 가져와보자  => 리턴타입: Enumeration(열거형)
		Enumeration en=request.getHeaderNames();
		
		//hasMoreElements():값이 있을때만 반복
		while(en.hasMoreElements()){
			//현재 헤더 이름을 가져옴(Object(컵) -> String(텀블러)로 downcasting)
			String headerName=(String)en.nextElement();
			//headerName이 host라면
			//request.getHeader("");
			String headerValue=request.getHeader(headerName);
			//JSP 내장객체 중 out객체를 통해 화면으로 출력
			out.print("<p>"+headerName+ " : "+headerValue+"</p>");
		}
	
	%>
</body>
</html>