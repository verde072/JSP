<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
function checkform(){
	alert("아이디: "+document.loginForm.id.value+"\n"+"비밀번호: "+document.loginForm.passwd.value);
	//폼필드를 submit함
	//action 생략시 현재의 URI를 요청
	//method 생략시 get이 기본
	document.loginForm.submit();
}
</script>
</head>
<body>
	<!--body와 body사이가 document  -->
	<form name="loginForm" action="">
		<p> 아이디: <input type="text" name="id" required/></p>
		<p>	비밀번호: <input type="password" name="passwd" /></p>
		<!--핸들러함수: submit을 클릭하면 실행  -->
		<p>	아이디: <input type="submit" value="전송" onclick="checkform()" /></p>
	</form>
</body>
</html>