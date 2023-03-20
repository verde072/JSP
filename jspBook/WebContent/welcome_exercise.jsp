<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--링크 렐르 흐  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<title>이슬 쇼핑몰</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<!--이 안에 내용이 있다  -->
		<!-- <div class="container"> -->
			<div class="navbar-header">
				<a class="navbar-brand" href="/welcome.jsp">Home</a>
			</div>
		<!-- </div> -->
	</nav>

	<!-- 선언문 	-->
	<%! 
		String greeting = "Book Market Mall";
		String tagline = "Welcome to Book Market";
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
</body>
</html>