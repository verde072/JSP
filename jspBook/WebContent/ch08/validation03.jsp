<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
function checkLogin(){
	let form = document.loginForm;
	if(form.id.value.length<4||form.id.value.length>12){
		alert("아이디는 4~12자 이내로 입력 가능합니다.")
		form.id.focus();
		return;
	}
	if(form.passwd.value.length<4){
		alert("비밀번호는 4자 이상으로 입력해야합니다.");
		form.passwd.select();//커서 위치시킴
		return false;
	}
	//통과했다면 
	form.submit(); //process.jsp를 요청
}

</script>

</head>
<body>
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p> 아이디: <input type="text" name="id" /></p>
		<p>	비밀번호: <input type="password" name="passwd" /></p>
		<!--핸들러함수: submit을 클릭하면 실행  -->
		<p>	아이디: <input type="button" value="전송" onclick="checkLogin()" /></p>
	</form>
</body>
</html>