<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="form03_process.jsp"  method="post">
		<p><!--checked: 처음부터 체크가 되어 있음. 다중 체크(배열. String[] ) -->
				 사과<input type="checkbox" name="fruit" value="apple" checked />
				바나나<input type="checkbox" name="fruit" value="banana"/>
				오렌지<input type="checkbox" name="fruit" value="orange"/>
		</p>
		<p>	<input type="submit"  value="전송"  />
		</p>
</body>
</html>