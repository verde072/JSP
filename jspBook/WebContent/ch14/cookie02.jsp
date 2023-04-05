<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();
	
	out.print("<p>현재 설정된 쿠키의 개수: "+cookies.length+"</p>");
	out.print("<hr/>");
	for(int i=0; i<cookies.length;i++){
		out.print("쿠키["+i+"]: "+cookies[i]+"<br/>");
		
		out.print("설정된 쿠키의 속성 name["+i+"]: "+cookies[i].getName()+"<br/>");
		out.print("설정된 쿠키의 속성 value["+i+"]: "+cookies[i].getValue()+"<br/>");
	}
	
	out.print("");
	%>
</body>
</html>