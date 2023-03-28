<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
function checkLogin(){
	//object
	let form=document.loginForm;
	if(form.id.value==""){
		alert("아이디를 입력해주세요");
		form.id.focus(); //해당 입력 항목에 커서가 위치함
		return false;//여기서 멈춰. 함수가 종료됨 
	}else if(form.passwd.value==""){
		alert("비밀번호를 입력해주세요")
		form.passwd.focus();
		return;
	}
	
	form.submit();
}
</script>
</head>
<body>
<!--유효성검사: 폼페이지에 입력한 데이터 값이 서버로 전송되기 전에 웹브라우저에서 검증하는 방법 
	1.기본유효성검사
	2.데이터 형식 유효성 검사: 정규표현식 사용
 -->
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<p> 아이디: <input type="text" name="id" /></p>
		<p>	비밀번호: <input type="password" name="passwd" /></p>
		<!--핸들러함수: submit을 클릭하면 실행  -->
		<p>	아이디: <input type="button" value="전송" onclick="checkLogin()" /></p>
	</form>
</body>
</html>