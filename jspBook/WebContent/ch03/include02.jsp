<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<title> 쇼핑몰</title>
</head>
<body>
	<!-- 파라미터가 필요 없을 땐 include 디렉티브로 다른 jsp를 가져옴 -->
	<%@ include file="include01_header.jsp" %>
	<p>방문해 주셔서 감사합니다</p>
	<!-- 파라미터가 필요할 땐 jsp액션태그의 include로 다른 jsp를 가져옴 -->
	<!-- include01_footer.jsp?memId=개똥이 -->
	<jsp:include page="include01_footer.jsp">
		<jsp:param name="memId" value='<%=URLEncoder.encode("개똥이")%>' />
	</jsp:include>
</body>
</html>