<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<!--폼 필드
	요청 URI: process.jsp?name=개똥이
	요청파라미터(HTTP파라미터,QueryString) : name=개똥이
	
	파라미터는 request 내장 객체에 들어있음 
	  -->
	  <%
	  request.setCharacterEncoding("UTF-8");
	  String name=request.getParameter("name");//개똥이 
	  %>
	  <p>이름: <%= name %></p>
	  <table border="1">
		 <tr>
			  <th>웹 브라우저 IP 주소: </th><td><%=request.getRemoteAddr() %></td>
		 </tr>
		 <tr>	  
			  <th>웹 브라우저의 요청 파라미터 길이 </th><td><%=request.getContentLength() %></td>
		 </tr>
		 <tr>	  
			  <th>문자 인코딩 </th><td><%=request.getCharacterEncoding() %></td>
		 </tr>
		 <tr>
			  <th>콘텐츠유형 </th><td><%=request.getContentType() %></td>
		 </tr>
		 <tr>	  
			  <th>요청 프로토콜</th><td><%=request.getProtocol() %></td>
		 </tr>
		 <tr>	  
			  <th>HTTP 요청 메소드 </th><td><%=request.getMethod() %></td>
		 </tr>
		 <tr>	  
			  <th>요청한 URI 경로 </th><td><%=request.getRequestURI() %></td>
		 </tr>
		 <tr>	  
			  <th>웹 애플리케이션 콘텍스트경로 </th><td><%=request.getContextPath() %></td>
		 </tr>
		 <tr>	  
			  <th>서버 이름 </th><td><%=request.getServerName() %></td>
		 </tr>
		 <tr>	  
			  <th>서버 포트 번호 </th><td><%=request.getServerPort() %></td>
		 </tr>
		 <tr>	  
			  <th>QueryString </th><td><%=request.getQueryString() %></td>
		 </tr>
	  </table>

</body>
</html>