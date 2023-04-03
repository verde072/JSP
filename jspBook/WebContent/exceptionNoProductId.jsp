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
		<div class="contaioner">
			<h1 class="display-3">해당 상품이 존재하지 않습니다</h1>
		</div>
	</div>
	<!--//////////오류처리 내용 시작 /////////////  -->
	<div class="container">
		<p><%=request.getRequestURL() %>?<%=request.getQueryString() %></p>
		<p><a href="products.jsp" class="btn btn-secondary">상품목록&raquo;</a></p>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>