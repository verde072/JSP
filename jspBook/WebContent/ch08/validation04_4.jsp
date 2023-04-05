<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
<script type="text/javascript">
	function checkForm(){
		//이름은 숫자로 시작할 수 없습니다.
		let str = document.frm.name.value;	//1개똥이
		console.log("str : " + str);
		//정규표현식 생성.(문자형식). 
		//[a-z] : a ~ z 사이의 문자
		//[A-Z] : A ~ Z 사이의 문자
		//[ㄱ-ㅎ]
		//[ㅏ-ㅣ]
		//[가-힣]
		let regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		//첫글자가 문자가 아님. 
		if(!regExp.test(str)){
			alert("이름은 숫자로 시작할 수 없습니다.");
			return; //함수를 빠져나옴.
		}
	}
</script>
</head>
<body>
	<form name="frm">
		<p>이름 : <input type="text" name="name" value="1개똥이" /></p>
		<!-- 핸들러 함수 -->
		<p><input type="button" value="전송" onclick="checkForm()" /></p>
	</form>
</body>
</html>