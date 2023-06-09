<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />

<title>이슬 쇼핑몰</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문취소</h1>
		</div>
	</div>
	
	<%
		session.invalidate();
	%>
	
	<div class="container">
		<h2 class="alert alert-danger">주문이 취소되었습니다</h2>
	</div>
	<div class="container">
		<p><a href="products.jsp" class="btn btn-secondary">&laquo;상품 목록</a></p>
	</div>
	
	<jsp:include page="footer.jsp"/>

</body>
</html>