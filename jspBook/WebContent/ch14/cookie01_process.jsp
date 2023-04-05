<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");
	
	out.print("user_id"+user_id+",user_pw"+user_pw);
	
	if(user_id.equals("admin")&&user_pw.equals("1234")){
		Cookie cookie_id =new Cookie("userid",user_id);
		Cookie cookie_pw =new Cookie("userPw",user_id);
		
		response.addCookie(cookie_id);		
		response.addCookie(cookie_pw);
		out.print("쿠키 설정 성공!<br/>");
		out.print(user_id+"님 환영!");
		
	}else{
		out.print("쿠키 설정 실패!");
	}
		
%>
</body>
</html>