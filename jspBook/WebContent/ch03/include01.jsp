<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%
		String memId="개똥이";
		memId=URLEncoder.encode(memId);
	%>
	<%@ include file="include01_header.jsp" %>
	<h4>-----------현재페이지 영역--------------</h4>
	<!--include 디렉티브는 파라미터를 던질 수 없다  -->
	<%-- <%@ include file="include01_footer.jsp?memId=개똥이" %> --%>
	<!--jsp 액션태그로 대체  -->
	<jsp:include page="include01_footer.jsp">
		<jsp:param name="memId" value="<%=memId %>"/>
	</jsp:include>
</body>
</html>