<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@ page import="kr.or.ddit.vo.MemberVO"%>
<%@ page import="java.util.ArrayList"%>
<!-- taglib디렉티브. prefix속성의 값은 c 
jstl-1.2.jar를 /WEB-INF/lib/jstl-1.2.jar
JSTL : JSP 태그 중에서 자주 사용되는 핵심 기능에 해당하는 태그를 모아놓은 라이브러리
-->
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<%	//JSP
		List<String> fruitList = new ArrayList<String>();
		fruitList.add("사과");
		fruitList.add("귤");
		fruitList.add("딸기");
		fruitList.add("바나나");
		fruitList.add("배");
		//pageContext객체 : page scope(영역)의 객체
		pageContext.setAttribute("fruitList", fruitList);
	%>
	<!-- items의 fruitList는 pageContext객체의 속성명 fruitList에 매핑된 데이터를 의미함 -->
	<c:forEach var="fruit" items="${fruitList}" varStatus="stat">
		<p>${fruit}</p>
	</c:forEach>
	<hr />
<%
	List<MemberVO> memberVOList = new ArrayList<MemberVO>();

	MemberVO memberVO = new MemberVO();
	memberVO.setMemId("a001");memberVO.setMemName("김은대");
	
	memberVOList.add(memberVO);
	
	memberVO = new MemberVO();
	memberVO.setMemId("b001");memberVO.setMemName("이쁜이");
	
	memberVOList.add(memberVO);
	
	memberVO = new MemberVO();
	memberVO.setMemId("c001");memberVO.setMemName("신용환");
	
	memberVOList.add(memberVO);	
	
	for(MemberVO vo : memberVOList){
		out.print("<p>" + vo.getMemId() + "</p>");
		out.print("<p>" + vo.getMemName() + "</p>");
	}
	pageContext.setAttribute("memberVOList", memberVOList);
%>
<hr />
	<!-- 
	memberVOList : [MemberVO{memId:a001,memName:김은대...},
					MemberVO{memId:b001,memName:이쁜이...},
					MemberVO{memId:c001,memName:최용환...}]
	 -->
	<c:forEach var="memberVO" items="${memberVOList}" varStatus="stat">
		<p>${memberVO.memId} : ${memberVO.memName}</p>
	</c:forEach>
</body>
</html>


















