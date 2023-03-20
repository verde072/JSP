<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%//스크립틀릿
		//지역변수
		int a=10;
		int b=20;
		int c=30;
		int sum=a+b+c;
		
		/* println해도 안먹음...br이나 p태그 써줘야함 */
		out.print("sum:"+sum);
		out.println("sum:"+sum+"<br/>");
		out.println("<p>sum:"+sum+"</p>");
	%>
	<!-- 표현문: 세미콜론 안씀-->
	<%= a + b + c %>
</body>
</html>