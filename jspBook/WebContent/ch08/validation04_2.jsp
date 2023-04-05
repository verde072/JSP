<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
<script type="text/javascript">
	//핸들러 함수
	function checkLogin(){
		//1. 아이디는 영문 소문자만 가능
		let form = document.loginForm;
		//form.id.value : admin
		//form.id.value.length : 5
		for(i=0;i<form.id.value.length;i++){//0~4반복
			//.charAt(i) : i번째 글자를 하나 끄집어 냄
			//01234
			//admin
			let ch = form.id.value.charAt(i);	//i : 0(a) ~ 4(n)
			if((ch<'a'||ch>'z')&&(ch>='A'||ch<='Z')&&(ch>='0'||ch<='9')){//영문 소문자가 아니라면
				alert("아이디는 영문 소문자만 입력 가능합니다.");
				form.id.focus();
				return;	//여기서 멈춤. break는 for문을 멈추는 반면에.. return 함수를 멈춤
			}
		}
		//2. 비밀번호는 숫자만 입력 가능.
		if(isNaN(form.passwd.value)){//문자이면..
			alert("비밀번호는 숫자만 입력 가능합니다.");
			form.passwd.focus();
			return;	//함수 종료
		}
		
		//아이디 및 비밀번호 유효성검사를 통과 시
		form.submit();	//폼 페이지 내의 폼 데이터에 입력된 데이터 값을(파라미터) 서버로 전송(request 객체에 담기도 함)
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
	<!-- validation03_process.jsp?id=a001&passwd=java -->
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" placeholder="아이디는 영문 소문자만 가능" /></p>
		<p>비밀번호 : <input type="password" name="passwd" placeholder="비밀번호는 숫자만 입력 가능" /></p>
		<!-- 핸들러함수 : 전송을 클릭하면 실행 -->
		<p>아이디 : <input type="button" value="전송" onclick="checkLogin()" /></p>
	</form>
</body>
</html>











