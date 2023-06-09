<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="kr.or.ddit.vo.ProductVO"%>
<%@ page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<%
//싱글톤(객체가 메모리에 한 번만 생성되어 전역변수처럼 공유하여 사용할 수 있음)으로 객체 생성
ProductRepository productDAO = ProductRepository.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title>쇼핑몰</title>
<script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){//예
			//action="addCart.jsp?id=P123
			document.addForm.submit();
		}else{//아니오
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<!-- include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
	<!-- 상품 목록 시작  -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<!-- 요청URI : http://localhost/product.jsp?id=P1236 -->
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");	//P1234
		
// 		out.print("id : " + id);
		
		//public ProductVO getProductById(String productId) {
		//productVO : ProductVO [productId=P1236, pname=Galaxy Tab S, unitPrice=900000.0
		//, description=212.8*125.6*6.6m, Super AMOLED display., manufacturer=Samsung
		//, category=Tablet, unitsInStock=1000, condition=Old, filename=P1236.jpg, quantity=0]
		ProductVO productVO = productDAO.getProductById(id);
		//null.toString()을 하여 오류를 발생시켜봄
		productVO.toString();
	%>
	<c:set var="productVO" value="<%=productVO%>" />
	<!-- 내용 -->
	<div class="container">
		<!-- 1건의 상품. 1행 -->
		<div class="row">
			<!-- 이미지 div -->
			<div class="col-md-5">
				<img src="/images/${productVO.filename}"
				alt="${productVO.pname}" title="${productVO.pname}"
				style="width:100%;" />
			</div>
			<div class="col-md-6">
				<h3>${productVO.pname}</h3>
				<p>${productVO.description}</p>
				<p>
					<b>상품 코드 : </b>
					<span class="badge badge-danger">
						${productVO.productId}
					</span>
				</p>
				<p><b>제조사 : </b>${productVO.manufacturer}</p>
				<p><b>분   류 : </b>${productVO.category}</p>
				<p><b>재고수 : </b>${productVO.unitsInStock}</p>
				<h4>${productVO.unitPrice}원</h4>
				<p><!-- 폼 페이지 -->
					<form name="addForm" action="addCart.jsp?id=${productVO.productId}" method="post">
						<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문 &raquo;</a>
						<a href="cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
						<a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
					</form>
				</p>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>








