<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<!-- Google CDN 방식 -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script src="/js/jquery.min.js"></script>
<script>
	//웹 페이지가 로드되면 실행되는 함수
	//문서 로드가 완료되기 전에 jQuery 코드가 실행되지 않도록 하기 위함
	//문서를 사용하기 전에 문서가 완전히 로드되고 준비될 때까지 기다리는 것이 좋음
// 	$(document).ready(function(){
	$(function(){
	    //버튼을 클릭하면 실행되는 함수의 선언
		$("button").click(function(){
	        //자기 가신의 요소를 숨김. 모든 <p>요소를 숨김
			$("p").hide();
	    });
	});
</script>
</head>
<body>
	<h2>This is a heading</h2>
	<p>This is a paragraph.</p>
	<p>This is another paragraph.</p>
	<button>Click me to hide paragraphs</button>
</body>
</html>
