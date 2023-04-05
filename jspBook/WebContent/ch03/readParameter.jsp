<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="readParameter_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title> 쇼핑몰</title>
</head>
<body>
<!-- 
	요청URI : readParameter.jsp?memId=a001
	요청파라미터(HTTP파라미터, QueryString) : memId=a001
	요청방식 : get방식(주소표시줄에 요청파라미터가 보임)
 -->
	<%
		//JSP 내장객체인 request객체.
		String memId = request.getParameter("memId");	//a001		
	%>
	<!-- /ch03/readParameter.jsp
		요류.. null은 대문자로 변환 불가
	 -->
	name 파라미터 값 : <%=memId.toUpperCase()%>

</body>
</html>












