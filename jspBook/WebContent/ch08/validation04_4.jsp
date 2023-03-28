<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
	function checkForm(){
		let str=document.frm.name.value;
		console.log("str: "+str)
		//정규표현식 생성.
		//[a-z]: a~z사이의 문자
		//[ㄱ-ㅎ]: 
		//[ㅏ-ㅣ]:
		//[가-힣]:
		let regExp = /[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if(!regExp.test(str)){
			alert("이름을 숫자로 시작할 수 없습니다.")
			return;
		}
	}
</script>
</head>
<body>
	<form name="frm">
		<p> 이름: <input type="text" name="name" value="1강아지"/></p>
		<!--핸들러함수 checkForm()-->
		<p><input type="button" value="전송" onclick="checkForm()" /></p>
	
	</form>
</body>
</html>