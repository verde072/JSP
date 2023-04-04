<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	//요청URI: /deleteCart.jsp?cartId=AE6B27C04FA661095C4363F881FC79BB
	//요청파라미터: cartId=AE6B27C04FA661095C4363F881FC79BB
	
	String id = request.getParameter("cartId"); //AE6B27C04FA661095C4363F881FC79BB <= session.getId()
	
	//cartId가 없네? cart.jsp 이동
	if(id==null || id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	//장바구니 비우기
	session.removeAttribute("cartlist"); //장바구니(세션)만 삭제 
	//session.invalidate(); //모든 상품정보가 삭제되는 결과 . 모든 상품 정보가 삭제되는 결과. 
	
	//cart.jsp 이동 
	response.sendRedirect("cart.jsp");
%>