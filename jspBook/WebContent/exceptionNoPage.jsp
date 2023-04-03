<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<script type="text/javascript" src="jquery-3.6.4.min.js"></script>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
$(function(){
	let href=window.location.href;
	//html: 기존데이터를 새로운 데이터로 덮어씀(html형식)
	//text: 기존 데이터를 새로운 데이터로 덮어씀(텍스트 형식)
	//append: 기존 데이터에 누적됨 
	console.log("href:"+href);
	$("p").eq(0).html(href);
})
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="contaioner">
			<h1 class="display-3">요청하신 페이지를 찾을 수 없습니다</h1>
		</div>
	</div>
	<!--//////////오류처리 내용 시작 /////////////  -->
	<div class="container">
		<p><%=request.getRequestURL() %></p>
		<p><a href="products.jsp" class="btn btn-secondary">상품목록&raquo;</a></p>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>