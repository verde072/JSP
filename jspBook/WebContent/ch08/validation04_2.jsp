<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
function checkLogin(){
	//object
	let form=document.loginForm;
	
	for(i=0;i<form.id.value.length;i++){
		//charAt(i): i번째 글자를 하나 꺼낸다
		let ch=form.id.value.charAt(i);
		if((ch<'a'||ch>'z')&&(ch>'A'||ch<'Z')&&(ch>'0'||ch<='9')){
			alert("아이디는 영문 소문자만 입력 가능합니다.");
			form.id.focus();
			return; //break는 for문을 멈춤, return은 함수를 멈춤
			
		}
	}
	
	if(isNaN(form.passwd.value)){
		alert("비밀번호는 숫자만 입력 가능합니다")
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