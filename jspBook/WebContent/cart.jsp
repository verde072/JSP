<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.math.BigDecimal"%>
<%@ page import="kr.or.ddit.vo.ProductVO"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title> 쇼핑몰</title>
</head>
<body>
<% //스크립틀릿
	//세션의 고유 아이디(장바구니번호)	
	String cartId = session.getId();
%>
<c:set var="cartId" value="<%=cartId%>" />
<p>${cartId}</p>
	<jsp:include page="menu.jsp" />
	
	<!-- 장바구니 목록 시작  -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	
	<!-- 
			list : 장바구니{P1234상품, P1235상품}
			 -->
			<c:set var="list" value='<%=(List<ProductVO>)session.getAttribute("cartlist")%>' />
	
	<!-- 장바구니 상세 내용 시작 -->
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left">
						<a href="deleteCart.jsp?cartId=${cartId}" 
							class="btn btn-danger">삭제하기</a>
					</td>
					<td align="right">
						<a href="shippingInfo.jsp?cartId=${cartId}" >
						<button type="button"
							<c:if test="${list==null or fn:length(list)<1}">disabled</c:if>
							class="btn btn-success">주문하기</button>
						</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
		<!-- 장바구니 출력 시작 -->
		<!-- padding-top : 영역의 위쪽 여백 50px -->
	<div style="padding-top:50px;">
		
<%-- 		<p>list : ${fn:length(list)}</p> --%>
		<table class="table table-hover">
			<tr>
				<th>상품</th><th>가격</th><th>수량</th>
				<th>금액</th><th>비고</th>
			</tr>
			
			<!-- 금액(total)을 누적하는 변수(sum) -->
			<c:set var="sum" value="0" />
			<!-- 장바구니가 비었다면.. -->
			<c:if test="${list==null or fn:length(list)<1}">
				<tr style="text-align:center;">
					<td colspan="5" style="text-align:center;">장바구니에 상품이 없습니다.</td>
				</tr>
			</c:if>
			<!-- 장바구니에 상품이 있으면... -->
			<c:if test="${list!=null and fn:length(list)>0}">
				<!-- 리스트에서 상품을 하나씩 꺼내보자 -->
				<c:forEach var="productVO" items="${list}" varStatus="">
					<!-- 금액 = 가격 x 수량 -->
					<c:set var="total" value="${productVO.unitPrice*productVO.quantity}" />
					<!-- 총액 : 금액의 합계(금액이 누적) -->
					<c:set var="sum" value="${sum+total}" />
					<tr>
						<td>${productVO.productId} - ${productVO.pname}</td>
						<td><fmt:formatNumber value="${productVO.unitPrice}" pattern="#,###" /> </td>
						<td>${productVO.quantity}</td>
						<td><fmt:formatNumber value="${total}" pattern="#,###" /></td>
						<td>
							<a href="removeCart.jsp?id=${productVO.productId}"
								class="badge badge-danger">삭제</a>
						</td>
					</tr>
				</c:forEach>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><fmt:formatNumber value="${sum}" pattern="#,###" /></th>
					<th></th>
				</tr>
			</c:if>
		</table>
		<a href="products.jsp" class="btn btn-secondary">&laquo;쇼핑 계속하기</a>
	</div>
		<!-- 장바구니 출력 끝 -->
	<!-- 장바구니 상세 내용 끝 -->
	
	<jsp:include page="footer.jsp" />
</body>
</html>













