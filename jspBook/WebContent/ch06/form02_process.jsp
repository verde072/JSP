<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="kr.or.ddit.vo.MemVO"%>
<%
	request.setCharacterEncoding("UTF-8");
	//request 내장객체 안에 있는 파라미터 중에서
	//이름이 id인 value를 가져옴
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String passwd = request.getParameter("passwd");
	String phone = request.getParameter("phone");
	String gender = request.getParameter("gender");
	String[] hobby = 
			request.getParameterValues("hobby");
	String comment = request.getParameter("comment");
	
	MemVO memVO = new MemVO();
	
	memVO.setId(id);
	memVO.setName(name);
	memVO.setPasswd(passwd);
	memVO.setPhone(phone);
	memVO.setGender(gender);
	memVO.setHobby(hobby);
	memVO.setComment(comment);
	
	out.print("memVO : " + memVO);
%>
<table border="1">
	<tr>
		<th>요청 파라미터 이름</th>
		<th>요청 파라미터 값</th>
	</tr>
	<% //스크립틀릿
		//모든 입력 양식의 요청 파라미터 이름을 순서에 상관없이
		//Enumeration(열거형) 형태로 전달받음
		Enumeration paramNames = request.getParameterNames();
		//hasMoreElements : 열거형 요소가 있으면 true 
		while(paramNames.hasMoreElements()){
			//id, name..
			String paramName = (String)paramNames.nextElement();
			out.print("<tr><td>" + paramName + "</td>");
			String paramValue = request.getParameter(paramName);
			out.print("<td>"+paramValue+"</td></tr>");
		}
	%>
</table>














