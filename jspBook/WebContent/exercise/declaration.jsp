<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<!--선언문 태그를 작성-->
	<%!
		String hello="Hello,Java Server Pages";
		
		String getString(){
			return hello;
		}
		
	%>
	
	
	<% //스크립틀릿 태그
		out.print(getString());
	%>
</body>
</html>