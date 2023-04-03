
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="kr.or.ddit.vo.ProductVO"%>
<%@ page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<%
//싱글톤- 객체가 메모리에 한번만 생성되어 전역변수처럼 공유하여 사용 
ProductRepository productDAO=ProductRepository.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
function addToCart(){
	if(confirm("상품을 장바구니에 추가하시겠습니까")){
		document.addForm.submit();
	}else{
		document.addForm.reset();
	}
	
}
</script>
</head>
<link rel="stylesheet" href="/css/bootstrap.min.css"/>

<body>
	<!--include 액션 태그  -->
	<jsp:include page="menu.jsp"/>
	
	<!--상품 목록 시작  -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<%
		request.setCharacterEncoding("UTF-8");
		String id= request.getParameter("id");
		out.print("id: "+id);
		ProductVO productVO =productDAO.getProductById(id);
		//null.toString()을 하여 오류를 발생시켜봄
		productVO.toString();
	%>
	<c:set var="productVO" value="<%=productVO%>" />
	<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="/images/${productVO.filename}"
					alt="${productVO.pname}" title="${productVO.pname}"
					style="width:100%"/>				
				</div>
				<div class="col-md-6">
					<h3>${productVO.pname}</h3>
					<p>${productVO.description}</p>
					<p>
						<b>상품코드: </b>
						<span class="badge badge-danger">
							${productVO.productId}
						</span>
					</p>
					<p><b>제조사: </b> ${productVO.manufacturer}</p>
					<p><b>분   류: </b> ${productVO.category}</p>
					<p><b>재고수: </b> ${productVO.unitsInStock}</p>
					<h4>${productVO.unitPrice}원</h4>
					<p>
						<form name="addForm" action="addCart.jsp?id=${productVO.productId}" method="post">
							<a href="#" class="btn btn-info" onclick="addToCart()">상품주문 &raquo; </a>
							<a href="cart.jsp" class="btn btn-warning" >장바구니 &raquo; </a>
							<a href="products.jsp" class="btn btn-secondary"> 상품목록 &raquo;</a>
						</form>
					</p>
				</div>					
			</div>
		</div>
	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>