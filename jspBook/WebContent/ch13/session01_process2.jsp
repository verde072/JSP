<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> 쇼핑몰</title>
</head>
<body>
	<% //스크립틀릿
	//요청URI : session01_process.jsp?id=admin&passwd=java
	//요청파라미터 : id=admin&passwd=java
	
	//한글 인코딩 처리
	request.setCharacterEncoding("UTF-8");
	
	String user_id = request.getParameter("id");	//admin
	String user_pw = request.getParameter("passwd");	//java
	//JSP에는 session 기본 내장 객체가 있음(scope(영역)는 session영역)
	if(user_id.equals("admin")&&user_pw.equals("java")){//로그인
		//request 기본 객체의 getSession() 메소드를 사용하여 session 객체를 생성할 수도 있음
		//HttpServletRequest request
		HttpSession httpSession = request.getSession();
		//동일한 웹브라우저 내 정보 공유
		httpSession.setAttribute("userId", user_id);
		httpSession.setAttribute("userPw", user_pw);
		//동일한 프로젝트 내 정보 공유
		application.setAttribute("userId", user_id);
		application.setAttribute("userPw", user_pw);
		
		out.print("<p>세션 설정 성공</p>");
		out.print("<p>" + user_id + "님 환영합니다.</p>");
		out.print("<a href='session01.jsp'>되돌아가기</a>");
	}else{
		out.print("<p>세션 설정 실패!</p>");
		out.print("<a href='session01.jsp'>되돌아가기</a>");
	}
	%>
</body>
</html>








