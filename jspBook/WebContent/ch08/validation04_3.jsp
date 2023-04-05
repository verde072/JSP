<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노태현 쇼핑몰</title>
<script type="text/javascript">
	function checkForm(){
		let str = document.frm.title.value;	//Java Server Page
		//정규 표현식
		let regExp = /Java/g;	//정규표현식 선언. i:ignore(대소문자를 구별하지 않겠다.)
		
		//.exec() : 추출 / .test() : T/F
		// Java.exec("Java Server Page")
		let result = regExp.exec(str);	//Java
		let result2 = regExp.test(str);	//True
		
		console.log("str : " + str);
		console.log("result : " + result);
		console.log("result2 : " + result2);
	}
</script>
</head>
<body>
	<!-- p.271 -->
	<form name="frm">
		<p>이름 : <input type="text" name="title" value="Java Server Page" /></p>
		<!-- 핸들러 함수 -->
		<p><input type="button" value="전송" onclick="checkForm()" /></p>
	</form>
</body>
</html>






