<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
<!-- session01.jsp와 session01_process.jsp를 먼저 수행 후 -->
<!-- 
	session.setAttribute("userId",user_id);//admin
	session.setAttribute("userPw",user_pw);//java
 -->
 	<!-- P.430 -->
 	<h4>------세션 삭제 전-------</h4>
	<%//스크립틀릿
		String user_id = (String)session.getAttribute("userId");//admin
		String user_pw = (String)session.getAttribute("userPw");//java
		out.print("설정된 세션 이름 userId 의 값 : " + user_id + "<br />");//admin
		out.print("설정된 세션 이름 userPw 의 값 : " + user_pw + "<br />");//java
		//세션의 속성 중 userId 속성을 제거(잘 안씀)
		session.removeAttribute("userId");
	%> 	
 	<h4>------세션 삭제 후-------</h4>
	<%//스크립틀릿
		user_id = (String)session.getAttribute("userId");//null
		user_pw = (String)session.getAttribute("userPw");//java
		out.print("설정된 세션 이름 userId 의 값 : " + user_id + "<br />");//null
		out.print("설정된 세션 이름 userPw 의 값 : " + user_pw + "<br />");//java
	%> 	
<iframe src="/ch13/session01.jsp" width="700" height="500"></iframe>
</body>
</html>










