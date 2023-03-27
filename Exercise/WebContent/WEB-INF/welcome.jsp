<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<!--링크 렐르 흐  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	
	<%! 
		String greeting = "도서 웹 쇼핑몰";
		String tagline = "Welcome to Web Market";
	
	%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting %>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3>
				<%= tagline %>
			</h3>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
	
</body>
</html>