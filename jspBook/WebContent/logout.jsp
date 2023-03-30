<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	//세션에 저장된 정보르 ㄹ모두 삭제
	session.invalidate();
	//상품등록화면 이동 =>결국은 로그인 페이지로 이동 
	response.sendRedirect("/addProduct.jsp");
%>