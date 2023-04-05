<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<!-- exception_process.jsp?num1=12&num2=6 (o)-->
	<!-- exception_process.jsp?num1=12&num2=0 (x)-->
	<% //스크립틀릿
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		out.print("num1 : " + num1 + ", num2 : " + num2);
		
		int a = Integer.parseInt(num1);
		int b = Integer.parseInt(num2);
		int c = a / b;
		
		out.print("<p>" + num1 + "/" + num2 + " = " + c + "</p>");
	%>
</body>
</html>








