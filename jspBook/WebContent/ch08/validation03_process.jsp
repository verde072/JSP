<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
</head>
<body>
	<!-- 요청URI : validation03_process.jsp?id=a001&passwd=java 
		요청파라미터 : id=a001&passwd=java
		요청방식 : post
	-->
	<h3>입력에 성공했습니다.</h3>
	<%
		//문자 인코딩 유형 처리
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");	//a001
		String passwd = request.getParameter("passwd");//java
	%>
	<p>아이디 : <%=id%></p>
	<p>비밀번호 : <%=passwd%></p>
	<p>나이 : <input type="number" name="memAge" maxlength="3" /></p>
	<p>생일 : <input type="date" name="memBir" /></p>
</body>
</html>










