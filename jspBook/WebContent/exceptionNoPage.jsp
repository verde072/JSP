<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<script type="text/javascript" src="/js/jquery-3.6.4.min.js"></script>
<title>쇼핑몰</title>
<script type="text/javascript">
//document의 요소들이 로딩된 후 실행
$(function(){
	let href = window.location.href;
	
	console.log("href : " + href);
	//html : 기존 데이터를 새로운 데이터로 덮어씀(html 형식)
	//text : 기존 데이터를 새로운 데이터로 덮어씀(텍스트 형식)
	//append : 기존 데이터에 누적됨
	$("p").eq(0).html(href);
});
</script>
</head>
<body>
	
	<jsp:include page="menu.jsp" />
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">요청하신 페이지를 찾을 수 없습니다</h1>
		</div>
	</div>
	
	<!-- /////////////// 오류 처리 내용 시작  ////////////// -->
	<div class="container">
		<!-- getRequestURL() : http://localhost/product.jsp -->
		<!-- getQueryString() : id=0000 -->
		<p><%=request.getRequestURL()%></p>
		<p><a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a></p>
	</div>
	<!-- /////////////// 오류 처리 내용 끝  ////////////// -->
	
	<jsp:include page="footer.jsp" />
	
</body>
</html>




