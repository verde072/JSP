<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<!-- 링크 렐르 흐 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<title> 쇼핑몰</title>
</head>
<body>
	<!-- ------- menu.jsp 시작 --------- -->
	<%@ include file="menu.jsp" %>
	<!-- ------- menu.jsp 끝 --------- -->
	<!-- 선언문
	greeting, tagline 이라는 문자형 전역변수 선언 및 할당(초기화)
	 -->
	<%! 
		//전역변수
		String greeting = "Welcome to Web Shopping Mall";
		String tagline = "Welcome to Web Market";
	%>
	<div class="jumbotron">
		<!-- 내용 있음 -->
		<div class="container">
			<h1 class="display-3">
				<!-- 표현문 -->
				<%=greeting%>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%	//스크립틀릿
				//1초마다 페이지를 갱신(새로고침)
				//response : JSP 기본 내장 객체
				response.setIntHeader("Refresh", 1);
				Date day = new Date();
				//지역변수 선언
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				
				if(hour/12==0){//hour가 0~11이면 => 0. 정수/정수 => 정수
					am_pm = "AM";
				}else{	//hour가 12 ~ 24이면 => 1 또는 2가 됨
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.print("<p>현재 접속 시각 : " + CT + "</p>");
			%>
		</div>
	</div>
	<!-- ------- menu.jsp 시작 --------- -->
	<%@ include file="footer.jsp" %>
	<!-- ------- menu.jsp 끝 --------- -->
	
</body>
</html>


















