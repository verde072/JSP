<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
<script type="text/javascript">
	function checkForm(){
		//It is Not A Number => isNaN
		//그거는 숫자가 아니다. => 문자
		//!(그거는 숫자가 아니다) => 숫자
		//"1admin".substr(0,1) => 1(첫글자)
		/* 012345
		   1admin
		   123456
		*/
		if(!isNaN(document.frm.name.value.substr(0,1))){
			//맨 앞의 한 글자를 끄집어냈더니 숫자가 나왔다면
			alert("이름은 숫자로 시작할 수 없습니다.");
			document.frm.name.focus();
			return;	//함수를 종료
		}
	}
</script>
</head>
<body>
	<!-- 폼 페이지 -->
	<form name="frm">
		<!-- 폼 데이터 -->
		<p>이름 : <input type="text" name="name" /></p>
		<!-- 핸들러 함수 checkForm()  -->
		<p><input type="button" value="전송" onclick="checkForm()" /></p>
	</form>
</body>
</html>