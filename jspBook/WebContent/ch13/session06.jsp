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
		out.print("getId : " + session.getId());
		//request.isRequestedSessionIdValid() : request 객체에 포함된
		//		클라이언트 세션이 유효한지 체킹
		if(request.isRequestedSessionIdValid()==true){
			out.print("<p>세션이 유효합니다</p>");//(o)
		}else{
			out.print("<p>세션이 유효하지 않습니다.</p>");
		}
		
		//세션에 저장된 모든 세션 속성 삭제*******로그아웃 시 많이 사용됨
		session.invalidate();
	%> 	
 	<h4>------세션 삭제 후-------</h4>
	<%//스크립틀릿
		out.print("getId : " + session.getId());
// 		user_id = (String)session.getAttribute("userId");//오류 발생
// 		user_pw = (String)session.getAttribute("userPw");//오류 발생
		
		if(request.isRequestedSessionIdValid()==true){
			out.print("<p>세션이 유효합니다</p>");
		}else{
			out.print("<p>세션이 유효하지 않습니다.</p>");//(o)
		}
	%> 	
<iframe src="/ch13/session01.jsp" width="700" height="500"></iframe>
</body>
</html>










