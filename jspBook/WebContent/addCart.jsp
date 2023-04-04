<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
//from:product.jsp
//요청URI: addCart.jsp?id=P1234

	String id = request.getParameter("id");//P1234
	out.print("id: "+id);

	if(id==null||id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	//기본키인 P1234 코드의 상품을 찾아보자
	//싱글톤 패턴으로 객체를 1회 생성
	ProductRepository dao =ProductRepository.getInstance();
	
	//Select*from product where product_id ="P1234"
	ProductVO product = dao.getProductById(id);
	
	out.print("product: "+product);
	
	if(product==null){
		//상품이 없음 예외처리 페이지로 이동
		response.sendRedirect("exceptionNoProductId.jsp");
		
	}
	
	//1)장바구니가 있는지 확인(세션) => 세선명: cartlist
	List<ProductVO> list =(List<ProductVO>)session.getAttribute("cartlist");
	
	out.print("<p>장바구니 list: "+list+"</p>");
	
	if(list==null){
		//List는 interface이므로 구현 클래스로 생성해야 함
		list = new ArrayList<ProductVO>();
		
		//cartlist라는 이름의 장바구니(세션)를 생성
		//상품이 들어있지 않은 장바구니
		session.setAttribute("cartlist",list);
	}
	
	int cnt=0;
	//2-1)장바구니 P1234상품이 이미 들어있는 경우
	//list.size()가 0보다 크다라는 의미
	//상품이 3개가 들어있다면. 0 1 2 3 회 반복
	for(int i=0; i<list.size();i++){
		//list.get(0) => ProductVO
		if(list.get(i).getProductId().equals(id)){
			list.get(i).setQuantity(list.get(i).getQuantity()+1);
		};
	}
	
	//2-2)장바구니 P1234상품 없는 경우
	if(cnt==0){
		product.setQuantity(1);
		//장바구니 list에 새로운 상품을 추가 
		list.add(product);
	}
	
	//장바구니 확인
	//list: 
	for(ProductVO vo:list){
		out.print("<hr/><p>"+vo+"</p>");
	}
	
	//상품상세페이지 이동 
	response.sendRedirect("product.jsp?id="+id);
	
%>