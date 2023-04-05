<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
<script type="text/javascript">
	//핸들러 함수
	function checkLogin(){
		//object
		let form = document.loginForm;
		if(form.id.value==""){//아이디를 입력하지 않음
			alert("아이디를 입력해주세요");
			form.id.focus();	//해당 입력 항목에 커서가 위치함
			return false;	//여기서 멈춰. 함수가 종료됨
		}else if(form.passwd.value==""){ //비밀번호를 입력하지 않음
			alert("비밀번호를 입력해주세요");
			form.passwd.focus(); //커서를 위치함
			return;	//함수 종료
		}
		
		//위의 분기문을 잘 통과했다면..
		form.submit();	// validation02_process.jsp를 요청
	}
</script>
</head>
<body>
	<!-- 유효성 검사(validation) : 폼 페이지에 입력한 데이터 값이 서버로 전송(submit)되기 전에 
					웹 브라우저(또는 서버)에서 검증하는 방법
	1. 기본 유효성 검사
		- 폼 페이지에 입력된 데이터 값의 존재 유무를 검사
	2. 데이터 형식 유효성 검사
		- 폼 페이지에 입력된 데이터의 값이 특정 패턴에 적합한지 여부를 검사. 
		- 정규 표현식(expression)을 사용함
	 -->
	<!-- validation02_process.jsp?id=a001&passwd=java -->
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<!-- 핸들러함수 : 전송을 클릭하면 실행 -->
		<p>아이디 : <input type="button" value="전송" onclick="checkLogin()" /></p>
	</form>
</body>
</html>


