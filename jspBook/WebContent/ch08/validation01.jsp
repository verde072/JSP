<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
<script type="text/javascript">
	function checkform(){
		alert("아이디 : "   + document.loginForm.id.value + "\n" +
			  "비밀번호 : " +  document.loginForm.passwd.value);
		//폼 필드를 submit함
		//action 생략 시 현재의 URI를 요청
		//method 생략 시 get이 기본
		document.loginForm.submit();
	}
</script>
</head>
<body>
	<!-- body와 body 사이를 document라고 함 
	<form name="loginForm" action="/ch08/validation01.jsp" method="get">
	-->
	<form name="loginForm">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<!-- 핸들러함수 : 전송을 클릭하면 실행 -->
		<p>아이디 : <input type="button" value="전송" onclick="checkform()" /></p>
	</form>
</body>
</html>




