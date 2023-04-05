<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>

	<%	//스크립틀릿
		//지역변수
		int a = 10;
		int b = 20;
		int c = 30;
		int sum = a + b + c;
		
		out.print("<p>sum : " + sum + "</p>");
		out.println("sum : " + sum + "<br />");
		out.println("<p>sum : " + sum + "</p>");
	%>	

	<hr />

	<!-- 표현문 -->
	<%=a + b + c%>
	
</body>
</html>






