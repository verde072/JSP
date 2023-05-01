<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="java.net.URLDecoder"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String Shipping_cartId = "";
	String Shipping_name = "";
	String Shipping_shippingDate = "";
	String Shipping_country = "";
	String Shipping_zipCode = "";
	String Shipping_addressName = "";
	String Shipping_addressDetName = "";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies==null){
		response.sendRedirect("products.jsp");
		return;
	}
	
	for(int i=0; i<cookies.length;i++){
// 		out.print("<p>"+cookies[i].getName()+":"
// 			+URLDecoder.decode(cookies[i].getValue(),"UTF-8"));
		if(cookies[i].getName().equals("Shipping_name")){
			Shipping_name = URLDecoder.decode(cookies[i].getValue(),"UTF-8");
		}
		if(cookies[i].getName().equals("Shipping_shippingDate")){
			Shipping_shippingDate = URLDecoder.decode(cookies[i].getValue(),"UTF-8");
		}
		if(cookies[i].getName().equals("Shipping_country")){
			Shipping_country = URLDecoder.decode(cookies[i].getValue(),"UTF-8");
		}
		if(cookies[i].getName().equals("Shipping_zipCode")){
			Shipping_zipCode = URLDecoder.decode(cookies[i].getValue(),"UTF-8");
		}
		if(cookies[i].getName().equals("Shipping_name")){
			Shipping_name = URLDecoder.decode(cookies[i].getValue(),"UTF-8");
		}
		if(cookies[i].getName().equals("Shipping_addressName")){
			Shipping_addressName = URLDecoder.decode(cookies[i].getValue(),"UTF-8");
		}
		if(cookies[i].getName().equals("Shipping_addressDetName")){
			Shipping_addressDetName = URLDecoder.decode(cookies[i].getValue(),"UTF-8");
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<link rel="stylesheet" href="/css/bootstrap.min.css" />

</head>
<body>
	<jsp:include page="menu.jsp"/>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 완료</h1>
		</div>
	</div>
	
	<div class="container">
		<h2 class="alert alert-danger">주문해 주셔서 감사합니다</h2>
			<p>주문은 <%=Shipping_shippingDate %>에 배송될 예정입니다.</p>
			<p>주문번호: <%=Shipping_cartId %></p>
		</div>
		
		<div class="row justify-content-between">
		</div>
		
		<div class="col-4" align="right">
			<p>
				<em>배송일:<%=Shipping_shippingDate %></em>
			</p>
		</div>
	</div>
	
	
	<div class="container">
		<p><a href="products.jsp" class="btn btn-secondary">&laquo;상품 목록</a></p>
	</div>
	
	
	<jsp:include page="footer.jsp"/>
</body>
</html>

<%
	session.invalidate();

	for(int i=0; i<cookies.length;i++){
		cookies[i].setMaxAge(0);
		response.addCookie(cookies[i]);
	}
%>  