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
		/* prev() / prevAll() / prevUntil 메서드
		- next() 관련 메서드와 완전히 같음
		- 차이점은 next는 다음에 오는 형제를, prev는 앞에 오는 형제를 탐색함
		- 달러(selector).prev(filter);
		*/
		$("button").click(function(){
		    $("li.start").prev()
		    .css({"color": "red", "border": "2px solid green"});
		});
	});
</script>
</head>
<body>
	<div style="width:500px;" class="siblings">
		<ul>ul (parent)  
			<li>li (the previous sibling of "start")</li>
			<li class="first">li (the previous sibling of "start")</li>
			<li class="start">li (sibling)</li>
			<li>li (the next sibling of "start")</li>
			<li class="first">li (the next sibling of "start")</li>
            <li class="stop">li (sibling with class name "stop")</li>
            <li class="second">li (the next sibling of "second")</li>
		</ul>
		<button>실행</button>
</div>
</body>
</html>
