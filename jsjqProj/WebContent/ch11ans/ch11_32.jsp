<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
	    $("button").click(function(){
	        $("#hydrangeas").hide(1000);
	        alert("The paragraph is now hidden");
	    });
	});
</script>
</head>
<body>
	<button>Hide</button>
	<p>This is a paragraph with little content.</p>
   	<img id="hydrangeas" src="hydrangeas.jpg" alt="hydrangeas" 
              width="300" height="200" />
</body>
</html>
