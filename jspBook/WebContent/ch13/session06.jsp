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
		out.print("getId:"+session.getId());
		//request.isRequestedSessionIdValue():request 객체에 포함된 클라이언트 세션이 유효한지 체킹
		if(request.isRequestedSessionIdValid()==true){
			out.print("<p>세션이 유효합니다</p>");//(o)
		}else{
			out.print("<p>세션이 유효하지 않습니다.");
		}
		
		//세션에 저장된 모든 세션 속성 삭제 ---로그아웃시 많이 사용
		session.invalidate();
	%>
	<h4>----세션 삭제 후-----</h4>
	<%
		out.print("getId:"+session.getId());

		if(request.isRequestedSessionIdValid()==true){
			out.print("<p>세션이 유효합니다</p>");
		}else{
			out.print("<p>세션이 유효하지 않습니다.");//(o)
		}
	%>
<iframe src="/ch13/session01.jsp" width="700" height="500"></iframe>
</body>
</html>