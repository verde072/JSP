<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
	    $("#start").click(function(){
	        $("div").animate({height: 300}, 1500);
	        $("div").animate({width: 300}, 1500);
	        $("div").animate({height: 100}, 1500);
	        $("div").animate({width: 100}, 1500);
	    });
	    $("#stop").click(function(){
	        $("div").clearQueue();
	    });
	});
</script> 
</head>
<body>
	<button id="start">Start Animation</button>
	<button id="stop">Stop Animation</button>
	<br><br>
	<div style="background:red;height:100px;width:100px;"></div>
</body>
</html>
