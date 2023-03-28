<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
	function checkForm(){
		let str = document.frm.title.value; //Java Server Page
		
		let regExp=/Java/i; //정규표현식 선언. i:ignore<=대소문자 구별 ㄴㄴ 한단 뜻
		
		//.exec():추출  / .test(): T/F
		let result = regExp.exec(str);
		let result2 = regExp.test(str);
		
		console.log("str: "+str);
		console.log("result"+result[0]+", "+result);
		console.log("result2"+result2[0]+", "+result2);
	}
</script>
</head>
<body>
	<form name="frm">
		<p> 이름: <input type="text" name="title" value="Java Server Page"/></p>
		<!--핸들러함수 checkForm()-->
		<p><input type="button" value="전송" onclick="checkForm()" /></p>
	
	</form>
</body>
</html>