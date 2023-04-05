<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<%	//스크립틀릿 
		//지역변수 a, b, sum => scriptlet01_jsp.java 내(..Service메소드)에서만 사용됨
		int a = 2;
		int b = 3;
		int sum = a + b; //5
		
		//JSP 기본객체인 out객체의 print()메소드를 사용하여 화면에 출력
		out.print("2 + 3 = " + sum);
	%>
</body>
</html>