<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<!--request객체와 response객체가 tryCatch_process.jsp에서 보내져서   
	tryCatch_error.jsp에서도 요청파라미터 num1=12&num2=0을 사용할 수 있음 -->
	<h2>잘못된 데이터가 입력되었습니다.</h2>
	<p>숫자1: <%=request.getParameter("num1") %></p>
	<p>숫자2: <%=request.getParameter("num2") %></p>

</body>
</html>