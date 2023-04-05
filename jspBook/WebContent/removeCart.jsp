<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% //스크립틀릿
	// 요청URI : /removeCart.jsp?id=P1235
	// 요청파라미터 : id=P1235
	String id = request.getParameter("id");	//P1235
	
	out.print("id : " + id);
	
	//만약에 /removeCart.jsp 또는 removeCart.jsp?id=Z1234
	//상품 목록으로 요청처리
	if(id==null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	//장바구니(세션)에서 P1235이 있는지 체크함
	List<ProductVO> list = (List<ProductVO>)session.getAttribute("cartlist");
	// 만약에 있다면(list.size()가 0보다 큼) 장바구니에서 제외처리
	for(int i=0;i<list.size();i++){
		//list.get(i) : 장바구니에 들어있는 상품 ProductVO 1행
		if(list.get(i).getProductId().equals(id)){//장바구니에 그 상품이 들어 있다면
			//list.remove(Object)
			list.remove(list.get(i));//장바구니 List에서 해당 상품을 제외
			//list.remove(i);	//희건이 발견!
		}
	}
	
	//장바구니를 확인해보자
	for(ProductVO vo : list){
		out.print("<hr />vo : " + vo);
	}
	
	response.sendRedirect("cart.jsp");
%>











