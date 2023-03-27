<%@page import="java.util.Calendar"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<h3>param 액션 태그 </h3>
	
	<!-- 
		param02_data.jsp?title="지금시간&date=2023-03-21 15:15
	 <h3>지금시간</h3>
		Today is : 2023-03-21 
	  -->
	
	<jsp:include page="param02_data.jsp">
		<jsp:param name="title" value='<%=URLEncoder.encode("지금 시간") %>'/>
		<jsp:param name="date" value="<%=Calendar.getInstance().getTime()%>"/>
	</jsp:include>
	<p>==============param02.jsp============ </p>
</body>
</html>