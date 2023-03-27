<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<!--
	1)톰캣한테 first.jsp를 요청->톰켓이 first.jsp를 처리->출력 버퍼(임시 저장 공간)에 저장  
	2)include 액션 태그를 만나면 second.jsp를 처리-> 출력버퍼에 저장
	3)second.jsp 처리가 다 끝나면 다시 first.jsp의 해당 위치로 되돌아옴. 계속 진행
	4)
	-->
	<h3>이 파일은 first.jsp입니다 </h3>
	<!--include 액션 태그: 동적 페이지에 사용함. 파라미터 전달이 가능  -->
	<jsp:include page="second.jsp">
		<jsp:param name="date" value="<%=new Date() %>"/>
	</jsp:include>
	<!--include 디렉티브: 정적 페이지에 사용함. 파라미터 전달이 불가  -->
	<!-- <%@ include file="second.jsp" %> -->
	<p>====first.jsp의 페이지</p>
</body>
</html>