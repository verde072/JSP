<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("id");//a001
		String password = request.getParameter("passwd");//java
		
		//헤더에 있는 host라는 name에 매핑되어 있는 값을 보자
		String hostValue=request.getHeader("host");
		//헤더에 있는 accept=language라는 name에 매핑되어있는 값 보자
		String alValue=request.getHeader("accept-language");
		
	%>
	<p>아이디:<%=userId %> </p>
	<p>비밀번호: <%=password%></p>
	<p>호스트명: <%=hostValue%></p>
	<p>설정된 언어: <%=alValue%></p>

</body>
</html>