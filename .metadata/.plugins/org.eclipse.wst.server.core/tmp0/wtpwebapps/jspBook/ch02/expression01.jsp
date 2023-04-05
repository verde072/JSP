<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	
	<p>
		Today's date : 
		<!-- 표현문 -->
		<%=new java.util.Date()%>
		
		<hr />
		<!-- 스크립틀릿 -->
		<%
			out.print(new java.util.Date() + "<br />");
		%>
	</p>

</body>
</html>






