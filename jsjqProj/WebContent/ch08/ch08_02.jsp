<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script>
	//jQuery를 사용하면 코드의 길이가 짧고, 단순함
    	function removeNode() {
			var para = document.getElementById("div1");
			var node = document.getElementsByTagName("p");
			for(var i = 0; i < node.length; i++) {
				para.removeChild(node[i]);
			}
		}
</script>
</head>
<body>
	<div id = "div1">
	    <h2>This is a heading</h2>
		<p>This is a paragraph.</p>
		<p>This is another paragraph.</p>
	</div>
	<Button onclick="removeNode()"> Click me..! </Button>
</body>
</html>
