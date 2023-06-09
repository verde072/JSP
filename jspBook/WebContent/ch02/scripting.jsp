<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>

	<h2>Scripting Tag</h2>
	<%!	//선언문 태그
		//전역변수 선언
		int count = 3;	
	
		//전역 메소드. 영문소문자로 변환해서 리턴 
		//리턴타입 : String / 파라미터(인수)를 받아들이는 매개변수 : String data
		//접근제한자 생략 시 open범위는? 동일패키지
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	
	<% //스크립틀릿 태그(자바 로직 코드 작성)
		//count : 3
		//지역변수 i를 사용하고, 1부터 3까지 1씩 증가며 반복
		for(int i=1;i<=count;i++){
			//out : JSP의 기본 객체(화면에 출력 대상 문자열을 출력)
			out.print("Java Server Page : " + i + "<br />개똥이<br />");
		}
	%>
	
	<!-- 표현문 태그. (선언문의 메소드를 호출(영문자를 파라미터로 던질것임) -> 소문자로 변환하여 리턴받음 -->
	<!-- 표현문의 목적이 화면에 출력해주는 것이므로 out.print를 사용하지 않음 -->
	<%=makeItLower("Hello World")%>
	<%out.print(makeItLower("Hello World"));%>
</body>
</html>










