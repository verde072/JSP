<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<!-- 
	1) jsp 컨테이너(톰켓)는 forward.jsp를 요청받음 -> 처리 -> 실행
	2) 실행하다가 forward 액션 태그를 만나면 출력 버퍼의 내용을 비움
	3) 프로그램 제어를 forward_data.jsp로 이동함(포워딩)
	4) forward_data.jsp를 실행
	5) jsp 컨테이너(톰켓)은 forward_data.jsp를 실행한 결과를 크롬에 응답해줌
	 -->
	<h2>forward 액션 태그</h2>
	<jsp:forward page="forward_data.jsp" />
	<p>----------------------</p>
</body>
</html>