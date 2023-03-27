<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script>
	// :selected : 미리 선택된 옵션 요소를 선택. 
	// 선택자는 확인란이나 라디오 버튼에서 작동하지 않음.(:checked 선택자 사용하기)
	$(function(){
		// :selected 선택자를 적용함
		//4개의 항목 중에서 임의의 항목을 선택하기 위해 화살표(V)를 선택하면
		//<option> 태그의 selected 속성이 "selected"로 지정된 항목이
		//빨간색으로 설정되어있음
		  
		
		$("#sel").on("change",function(){
			$(":selected").css("background-color", "blue");	
		});
	});
</script>
</head>
<body>
	<h2>기타 연산자</h2>
	<p>
		<img src="/images/ch09_37_01.jpg" />
	</p>
	<form action="">
		Name: <input type="text" name="user"><br>
		Car: <select id="sel">
				<option>Volvo</option>
				<option selected="selected">Saab</option>
				<option>Mercedes</option>
				<option>Audi</option>
			</select>
	</form>

</body>
</html>
