<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="page_errorPage_error.jsp" %>
<!--오류발생시 page디렉티브의 errorPage속성의 값으로 설정된 오류처리 jsp를 요청함  -->
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<% //스크립틀릿=>지역변수 선언
		String str=null;
		//오류발생!!(null을 toString()을 할 수 없으므로...)
		out.print(str.toString());
	%>
	
	<%=str%>
	
</body>
</html>