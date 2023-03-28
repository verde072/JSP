<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="form01_process.jsp"  method="post">
		<p> 이름: <input type="text" name="name" required/></p>
		<p>	주소: <input type="text" name="addr" required/></p>
		<p>	이메일: <input type="text" name="mail" /></p>
		<p>	<input type="submit"  value="전송"  />
		</p>
</body>
</html>