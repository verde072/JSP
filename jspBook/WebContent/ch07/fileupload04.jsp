<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<form action="fileupload04_process.jsp" method="post" enctype="multipart/form-data">
		
		<p>이름: <input type="text" name="name" /></p>
		<p>제목: <input type="text" name="subject" /></p>
		<!--multiple과 같음  -->
	<!-- 	<p>파일1: <input type="file" name="filename" /></p>
		<p>파일2: <input type="file" name="filename" /></p>
		<p>파일3: <input type="file" name="filename" /></p> -->
		
		<!--이렇게 하면 다중선택 된다.  -->
		<p>파일1: <input type="file" name="filename" multiple/></p>
		<p><input type="submit" value="파일올리기" /></p>
	</form>
</body>
</html>