<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<!-- 선언문 태그를 작성. 
		전역 메소드 sum
		리턴 타입 : int(정수형)
		매개변수 : int a / int b
	 -->
	<%!
		int sum(int a, int b){
			return a + b;
		}
	%>
	
	<%	//스크립틀릿 태그
		//sum이라는 전역메소드를 호출(두 개의 파라미터를 전달)
		out.print("2 + 3 = " + sum(2, 3));
	%>
</body>
</html>




