<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<h4>----유효시간 변경 전-----</h4>
	<%
		//세션에 설정된 유효시간을 가져옴
		int time = session.getMaxInactiveInterval();
		out.print("<p>세션 유효시간:"+time+"초</p>");
	
	%>
	<h4>----유효시간 변경 후-----</h4>
	<%
		session.setMaxInactiveInterval(60*60);//
		time=session.getMaxInactiveInterval();//초단위
		
		out.print("<p>세션 유효시간:"+time+"초</p>");
	
	%>
</body>
</html>