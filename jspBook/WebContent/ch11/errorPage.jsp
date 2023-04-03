<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>정지은 쇼핑몰</title>
</head>
<body>
<!-- 
	예외 처리
- 프로그램이 처리되는 동안(프로세스) 문제발생시 처리를 중단하고
     다른 처리를 하는 것.
- 1) page디렉티브    : errorPage(오류발생시 해당 URI를 요청), isErrorPafe(그 URI JSP 파일 상단에 자것ㅇ하여 이페이지는 오류 처리 페이지임을 나타냄)
- 2) web.xml*** : 톰켓설정파일. error-code(404, 500..), exception-type(NullPointException)
- 3) try~catch~finally : 자바 언어의 예외 처리 구문.
 -->
 
 <!-- errorPage.js?name="apple"  => APPLE-->    <!-- http://localhost/ch11/errorPage?name=%22apple%22 -->
 <!-- errorPage.jsp => 오류발생(NULL을 대문자로 바꿀 수 없음)-->
 name파라미터 : <%=request.getParameter("name").toUpperCase() %>
 
 
 
 
</body>
</html>