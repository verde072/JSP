<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page import="kr.or.ddit.vo.ProductVO"%>
<%@ page import="java.util.List"%>
<%
	//기본 생성자에 의해서
	// ProductVO 객체 리스트 타입의 listOfProducts 멤버변수에 저장된
	// 상품 데이터를 다룰 수 있음
	ProductRepository productDAO = 
		ProductRepository.getInstance();

	//JSP 내장 객체인 out 객체를 사용
// 	out.print(productDAO.getAllProducts());
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title>쇼핑몰</title>
</head>
<body>
	<!-- include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
	<!-- 상품 목록 시작  -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<% //스크립틀릿
		//ProductVO 객체 타입의 리스트 변수 listOfProducts에 저장된 모든 상품 목록을 가져옴
		List<ProductVO> listOfProducts = productDAO.getAllProducts();
	%>
	<c:set var="listOfProducts" value="<%=listOfProducts%>" />
	<!-- container : 이 안에 내용이 있다 -->
	<div class="container">
		<!-- 행별 처리 -->
		<div class="row" align="center">
				<!-- 스크립틀릿 3회 반복 -->
				<!-- 열별 처리 -->
				<!-- 
				stat.index : 0부터 1증가 값
				stat.count : 1부터 1증가 값
				
				listOfProducts : List<ProductVO>
				 -->
				<c:forEach var="productVO" items="${listOfProducts}" varStatus="stat"  >
					<div class="col-md-4">
						<img src="/images/${productVO.filename}" 
						title="${productVO.pname}" style="width:100%;" />
						<h3>${productVO.pname}</h3>
						<p>${productVO.description}</p>
						<p>${productVO.unitPrice}</p>
						<p>
							<!-- 요청URI : http://localhost/product.jsp?id=P1234 -->
							<a href="product.jsp?id=${productVO.productId}" class="btn btn-secondary" 
							role="button">
							상세정보&raquo;</a>
						</p>
					</div>
				</c:forEach>
		</div>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<a href="addProduct.jsp" class="btn btn-primary">상품등록</a>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>























