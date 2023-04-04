<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	//요쳥 URI: /removeCart.jsp?id=P1234
	//요청파라미터: id=P1235	
	String id = request.getParameter("id");

	out.print("id:"+id);
	
	//만약에 /removeCart.jsp 또는 removeCart.jsp?id=Z1234
	//상품목록으로 요청처리
	if(id==null||id.trim().equals("")){
		response.sendRedirect("prodcuts.jsp");
		return;
	}
	
	//장바구니에서 P1235가 있는지 체크함 
	List<ProductVO> list = (List<ProductVO>) session.getAttribute("cartlist");
	//만약에 있다면 (list.size()가 0보다 큼) 장바구니에서 제외 처리 
	for(int i=0; i<list.size();i++){
		//list.get(i):장바구니에 들어있는 상품 ProductVO 1행 
		if(list.get(i).getProductId().equals(id)){
			list.remove(list.get(i));
			//list.remove(i); //이렇게 해도 됨
		}
	}
	
	for(ProductVO vo: list){
		out.print("<hr/>vo:"+vo);
	}  
	
	response.sendRedirect("cart.jsp");
%>