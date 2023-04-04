<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<link rel="stylesheet" href="/css/bootstrap.min.css"/>
</head>
<body>
<%
	//세션의 고유아이디
	String cartId = session.getId();
%>
<c:set var="cartId" value="<%=cartId %>"/>
<p>${cartId}</p>
<jsp:include page="menu.jsp" />
	
<!--장바구니목록 시작  -->
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">장바구니 목록</h1>
	</div>
</div>

<div class="container">
	<div class="row">
		<table width="100%">
			<tr>
				<td align="left">
					<a href="deleteCart.jsp?cartId=${cartId}" class="btn btn-danger">삭제하기 </a>
				</td>
				<td align="right">
					<a href="shippingInfo.jsp?cartId=${cartId}" class="btn btn-success">주문하기 </a>
				</td>
			</tr>
		</table>
	</div>
</div>

<div style="padding-top:50px;">
	<table class="table table-hover">
		<tr>
			<th>상품</th><th>가격</th><th>수량</th>
			<th>금액</th><th>비고</th>
		</tr>
		<c:set var="list" value='<%=(List<ProductVO>)session.getAttribute("cartlist") %>'/>
			<!-- //금액(total)을 누적하는 변수 -->
		<c:set var="sum" value="0"/>
		
		<c:if test="${list==null}">
			<tr style="text-align:center;">
			<td colspan="5" style="text-align:center;">장바구니에 상품 비었습니다</td>
			</tr>
		</c:if>
		
		<c:if test="${list!=null}">
			<c:forEach var="productVO" items="${list}" varStatus="">
				<c:set var="total" value="${productVO.unitPrice*productVO.quantity}" />
				<!-- //총액: 금액합계(금액이 누적) -->
				<c:set var="sum" value="${sum+total}"/>
				<tr>
					<td>${productVO.productId} - ${productVO.pname}</td>
					<td><fmt:formatNumber value="${productVO.unitPrice}" pattern="#,###"/></td>
					<td>${productVO.quantity}</td>
					<td><fmt:formatNumber value="${total}" pattern="#,###"/></td>
					<td>
						<a href="removeCart.jsp?id=${productVO.productId}"
							class="badge badge-danger">삭제</a>
						
					</td>
				</tr>		
			</c:forEach>
		</c:if>
		<tr>
			<th></th>
			<th></th>
			<th>총액</th>
			<th><fmt:formatNumber value="${sum}" pattern="#,###"/></th>
			<th></th>
		</tr>
	</table>
	<a href="products.jsp" class="btn btn-secondary">&laquo;쇼핑 계속하기</a>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>