<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<%	//스크립틀릿 
		//for문을 활용하여 0부터 10까지 반복
		//짝수인 경우에만 다음과같이 화면에 출력
		//0
		//2
		//4
		//6
		//...
		//10
		for(int i=0;i<=10;i++){
			//JSP 기본객체인 out 객체의 print() 메소드를 통해
			//문자열을 화면에 출력
			if(i%2==0)	//짝수인 경우
				out.print(i + "<br />");
		}
	%>
</body>
</html>






