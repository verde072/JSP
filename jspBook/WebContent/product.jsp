<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%
//싱글톤- 객체가 메모리에 한번만 생성되어 전역변수처럼 공유하여 사용 
ProductRepository productDAO=ProductRepository.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
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
					<h4>${productVO.unitPrice}</h4>
					<p>
						상품주문 &raquo;
						장바구니 &raquo;
						<a href="products.jsp"> </a>상품목록 &raquo;
					</p>
				</div>					
			</div>
		</div>
	
	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>