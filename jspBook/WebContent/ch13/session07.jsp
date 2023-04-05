<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> 쇼핑몰</title>
</head>
<body>
	<h4>--------- 세션 유효 시간 변경 전-------------</h4>
	<% //스크립틀릿
		//세션에 설정된 유효 시간(기본 60초 x 30분 = 1800초(30분))을 가져옴
		int time = session.getMaxInactiveInterval();	//초단위
		
		out.print("<p>세션 유효 시간 : " + time + "초</p>");	
	%>
	<h4>--------- 세션 유효 시간 변경 후-------------</h4>
	<%//스크립틀릿
		//세션 유효 시간을 60초 x 60분(1시간)으로 설정
				   session.setMaxInactiveInterval(60 * 60);//3600초
		time = session.getMaxInactiveInterval();	//초단위
		
		out.print("<p>세션 유효 시간 : " + time + "초</p>");
	%>
</body>
</html>