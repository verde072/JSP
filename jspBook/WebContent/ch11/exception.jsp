<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<%
		try{
			String param = request.getParameter("param");
			out.print(Integer.parseInt(param));
		}catch(Exception e){
			throw new NullPointerException();
		}
	%>
	<!-- exception_process.jsp?num1=12&num2=6 -->
	<form action="exception_process.jsp" method="post">
		<p>숫자1 : <input type="text" name="num1" /></p>
		<p>숫자2 : <input type="text" name="num2" /></p>
		<p><input type="submit" value="나누기" /></p>
	</form>
</body>
</html>