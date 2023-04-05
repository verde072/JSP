<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
</head>
<body>
	<!-- 폼 필드 
	요청URI : response01_process.jsp?id=a001&passwd=java
	요청파라미터(HTTP파라미터, QueryString) : id=a001&passwd=java
	-->
	<% //스크립틀릿
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("id");//a001
		String password = request.getParameter("passwd");	//java
		
		//map에 아이디와 비번을 담음
		Map<String,String> map = new HashMap<String,String>();
		map.put("userId", userId);
		map.put("password",password);
		
		if(userId.equals("a001")&&password.equals("java")){//관리자
			//JSP 내장 객체인 session의 map 속성에 map 데이터를 매핑
			//session객체는 동일한 웹브라우저에서 데이터를 공유
			session.setAttribute("map", map);
		
			//재요청
			response.sendRedirect("response01_success.jsp");
		}else{
			//재요청
			response.sendRedirect("response01_failed.jsp");
		}
	%>
</body>
</html>











