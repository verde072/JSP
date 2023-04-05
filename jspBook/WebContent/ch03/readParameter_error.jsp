<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title> 쇼핑몰</title>
</head>
<body>
<!-- 오류 타입 -->
<p><%=exception.getClass().getName()%></p>

<!-- 오류 메시지 -->
<p><%=exception.getMessage()%></p>
<!-- 오류 처리 방법
1. page 디렉티브의 errorPage 속성에 지정한 오류 페이지를 통한 처리 
	- 전용 오류 페이지가 필요할 경우 사용
2. web.xml의 exception-type => 최종프로젝트 때 사용할 예정
	- 별도로 처리해야 하는 exception이 있을 때(심각할 때..) 사용
3. web.xml의 error-code => 최종프로젝트 때 사용할 예정
	- 범용적인(자주 발생) 오류 코드(404, 500)일 때
4. try~catch()~finall()
 -->
</body>
</html>









