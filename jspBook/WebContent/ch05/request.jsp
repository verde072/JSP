<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
</head>
<body>
	<!-- 폼 필드 
	요청URI : process.jsp?name=개똥이
	요청파라미터(HTTP파라미터, QueryString) : name=개똥이
	-->
	<form action="process.jsp" method="post">
		<!-- 폼 데이터 -->
		<p>
			이름 : <input type="text" name="name" />
			<input type="submit" value="전송" />
		</p>
	</form>
</body>
</html>