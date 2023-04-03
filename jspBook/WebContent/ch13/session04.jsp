<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<h4>----세션 삭제 전-----</h4>
	<%
		String user_id = (String) session.getAttribute("userId");
		String user_pw = (String) session.getAttribute("userPw");
		out.print("설정된 세션 이름 userId의 값: " + user_id + "<br/>");//admin
		out.print("설정된 세션 이름 userPw의 값: " + user_pw + "<br/>");//java
		//세션의 속성중 userId 속성을 제거 (잘 안씀)
		session.removeAttribute("userId");
	%>
	<h4>----세션 삭제 후-----</h4>
	<%
		user_id = (String) session.getAttribute("userId");//앞에서 제거했으니 null
		user_pw = (String) session.getAttribute("userPw");
		out.print("설정된 세션 이름 userId의 값: " + user_id + "<br/>");//null
		out.print("설정된 세션 이름 userPw의 값: " + user_pw + "<br/>");
	%>
	<iframe src="/ch13/session01.jsp" width="700" height="500"></iframe>
</body>
</html>