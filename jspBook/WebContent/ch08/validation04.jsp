<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
function checkForm(){
	//It is Not A Number=isNaN
	//"1admin".substr(0,1)
	
	if(!isNaN(document.frm.name.value.substr(0,1))){
		alert("이름은 숫자로 시작할 수 없습니다.");
		document.frm.name.focus();
		return;
	}
}	

</script>

</head>
<body>
	<form name="frm" >
		<p> 이름: <input type="text" name="name" /></p>
		<!--핸들러함수 checkForm()-->
		<p><input type="button" value="전송" onclick="checkForm()" /></p>
	</form>
</body>
</html>