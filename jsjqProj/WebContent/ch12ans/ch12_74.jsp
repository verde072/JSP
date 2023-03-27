<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Untitled Document</title>
<style>
.descendants * { 
    display: block;
    border: 2px solid orange;
    color: blue;
    padding: 5px;
    margin: 15px;
}
</style>
<script src="/js/jquery.min.js"></script>
<script>
	$(function(){
		$("button").click(function(){
			//<div> 요소의 모든 직접 자식을 반환
			//<p> 요소만의 속성이 바뀜
    		$("div").children()
    		.css({"color": "green", "border": "2px solid green"});
		});
	});
</script>
</head>
<body>
	<div class="descendants" style="width:500px;">div (current element)
		<p>p (child)
	    	<span>span (grandchild)</span>
		</p>
		<p>p (child)
			<span>span (grandchild)</span>
		</p>
	</div>
	<button>Add classes to elements</button>
</body>
</html>
