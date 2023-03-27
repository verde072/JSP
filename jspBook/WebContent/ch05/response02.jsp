<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery-3.6.4.min.js"></script>

<title>이슬 쇼핑몰</title>
<script type="text/javascript">
//document가 모두 로딩되면 실행
$(function(){
	setInterval(function(){
			
		//현재 날짜, 시간
		let now=new Date();
		console.log("현재:"+now);
		
		let year=now.getFullYear();
		let month=now.getMonth();
		let day=now.getDate();
		let hours=now.getHours();
		let minutes=now.getMinutes();
		let seconds=now.getSeconds();
		let result=year+"-"+month+"-"+day+ " "+hours+":"+minutes+":"+seconds;
		
		//셀럭터.html(내용):내용으로 덮어쓰기
		//셀럭터.append(내용):내용으로 누적 
		$("#idNow").html(result);
	},1000);
});
</script>
</head>
<body>
	<!-- <p>이 페이지는 1초마다 새로고침 됩니다</p> -->
	<%	
		//response.setIntHeader("Refresh",1);
	%>
	<%-- <h1><%=new Date().toLocaleString() %></h1> --%>
	<h1 id="idNow"></h1>
</body>
</html>