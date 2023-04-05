<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
<script type="text/javascript">
	//데이터 형식 유효성 검사
	function checkLogin(){
		//폼 페이지를 object에 담음
		let form = document.loginForm;
		//아이디 : 4~12자 이내로 입력
		if(form.id.value.length<4 || form.id.value.length > 12){
			alert("아이디는 4~12자 이내로 입력 가능합니다.");
			form.id.focus();	//.select()
			return;	//false는 생략 가능. 함수를 종료함
		}
		//비밀번호 : 4자 이상으로 입력
		if(form.passwd.value.length < 4){
			alert("비밀번호는 4자 이상으로 입력해야 합니다.");
			form.passwd.select();	//커서를 위치함
			return false;	//함수를 종료함
		}
		
		//통과했다면..
		form.submit();	//validation03_process.jsp를 요청
	}
</script>
</head>
<body>
	<!-- validation03_process.jsp?id=a001&passwd=java -->
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<!-- 핸들러함수 : 전송을 클릭하면 실행 -->
		<p>아이디 : <input type="button" value="전송" onclick="checkLogin()" /></p>
	</form>
</body>
</html>


