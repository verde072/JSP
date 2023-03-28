<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<h3>입력에 성공했습니다.</h3>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	%>
	<p>아이디:<%=id%></p>
	<p>비밀번호:<%=passwd%></p>
	<p>나이:<input type="number" name="memAge" maxlength="3"/></p>
	<p>생일:<input type="date" name="memBir" /></p>
</body>
</html>