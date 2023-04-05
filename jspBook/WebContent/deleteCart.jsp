<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% //스크립틀릿
	//요청URI : /deleteCart.jsp?cartId=6B40049B58AFE0F0F9A5DAE6419B9ED0
	//요청파라미터 : cartId=6B40049B58AFE0F0F9A5DAE6419B9ED0
	
	String id = 
	request.getParameter("cartId");	//6B40049B58AFE0F0F9A5DAE6419B9ED0 <= session.getId()
	
	//cartId가 없네? => cart.jsp이동
	if(id==null || id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	//장바구니 비우기
	session.removeAttribute("cartlist");	//장바구니(세션)만 삭제. 
	//session.invalidate();	//모든 세션을 삭제. 모든 상품 정보가 삭제되는 결과.
	
	//cart.jsp로 이동
	response.sendRedirect("cart.jsp");
%>