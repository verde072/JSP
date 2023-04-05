<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery-3.6.4.min.js"></script>
<title>노태현 쇼핑몰</title>
<script type="text/javascript">
//document가 모두 로딩되면 실행
$(function(){
	setInterval(function(){
		//현재 날짜 및 시간
		let now = new Date();
		console.log("현재 : " + now);
		//연도 구하기
		let year = now.getFullYear();
		//월 구하기
		let month = now.getMonth();
		//일 구하기
		let day = now.getDay();
		//시간 구하기
		let hours = now.getHours();
		//분 구하기
		let minutes = now.getMinutes();
		//초 구하기
		let seconds = now.getSeconds();
		
		let result = year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
		//셀렉터.html(내용) : 내용으로 덮어쓰기
		//셀렉터.append(내용) : 내용으로 누적
		$("#idNow").html(result);
	},1000);
});
</script>
</head>
<body>
<!-- 	<p>이 페이지는 1초마다 새로고침 됩니다</p> -->
	<% //스크립틀릿
		//response.setIntHeader("Refresh", 1);
	%>
<%-- 	<h1><%=new Date().toLocaleString()%></h1> --%>
	<h1 id="idNow"></h1>
</body>
</html>