<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
<!-- 예외 처리
- 프로그램이 처리되는 동안(프로세스) 문제 발생 시 처리를 중단하고
	다른 처리를 하는 것 
- 1) page 디렉티브 : errorPage(오류 발생 시 해당 URI를 요청)
			, isErrorPage(그 URI JSP 파일 상단에 작성하여 이 페이지는 오류 처리 페이지임을 나타냄)
- 2) web.xml*** : 톰켓 설정 파일. error-code(404, 500..), exception-type(NullPointException)
- 3) try~catch~finally : 자바 언어의 예외 처리 구문
 -->
 	<!-- errorPage.jsp?name="apple => APPLE -->
 	<!-- errorPage.jsp => 오류발생(null을 대문자로 변환 불가) -->
 	name 파라미터 : <%=request.getParameter("name").toUpperCase() %>
</body>
</html>









