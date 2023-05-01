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
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>
	
	<div class="container col-8 alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		
		<div class="row justify-content-between">
			<strong>배송 주소</strong><br />
			성명: <%=Shipping_name%><br />
			우편번호: <%=Shipping_zipCode%><br />
			주소: <%=Shipping_country%>&nbsp;<%=Shipping_addressName%><br />
			상세주소 : <%=Shipping_addressDetName%><br />
		</div>
		
		<div class="col-4" align="right">
			<p>
				<em>배송일:<%=Shipping_shippingDate %></em>
			</p>
		</div>
	</div>
	
	
	
	<div>
		<table class="table table-hover">
			<tr>
				<th class="text-center">상품명</th>
				<th class="text-center">#</th>
				<th class="text-center">가격</th>
				<th class="text-center">소계</th>
			</tr>
			<%
				double sum = 0;
				List<ProductVO> list= (List<ProductVO>)session.getAttribute("cartlist");
				
				for(int i=0; i<list.size(); i++){
					ProductVO productVO=list.get(i);
					double amount = productVO.getUnitPrice()*productVO.getQuantity();
					sum=sum+amount;
					BigDecimal amountBig=new BigDecimal(amount);
				
			%>
			<tr>
				<td class="text-center"><em><%=productVO.getPname() %></em></td>
				<td class="text-center"><%=productVO.getQuantity() %></td>
				<td class="text-center"><fmt:formatNumber value="<%=productVO.getUnitPrice() %>" pattern="#,###"/></td>
				<td class="text-center"><fmt:formatNumber value="<%=amountBig %>" pattern="#,###"/></td>
			</tr>
			<%
				}
				
				BigDecimal sumBig= new BigDecimal(sum);
			%>
			<tr>
				<td></td>
				<td></td>
				<td class="text-right"><strong>총액:</strong></td>
				<td class="text-center text-danger"><strong>
					<fmt:formatNumber value="<%=sumBig %>" pattern="#,###"/>
				</strong></td>
			</tr>
		</table>
		<a href ="shippingInfo.jsp?cartId=<%=Shipping_cartId %>" class="btn btn-secondary" role="button">이전</a>
		<a href ="thankCustomer.jsp" class="btn btn-success" role="button">주문 완료</a>
		<a href ="checkOutCancelled.jsp" class="btn btn-secondary" role="button">최소</a>
		
		
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>