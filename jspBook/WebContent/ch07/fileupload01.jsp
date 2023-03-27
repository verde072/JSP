<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<!--
	commons-fileupload.jar, commons-io.jar:파일 업로드 오픈 라이브러리
	
	1. form태그
	2. method="post"
	3. input type="file" name="이름이 상당히 중요함"
	4. enctype="multipart/form-data"
	5. action ="요청URI경로"
	 -->
	
	
	<form action="fileupload01_process.jsp" method="post" enctype="multipart/form-data"> 
		<p>파일 업로드</p>
		<!--item.isFormField(): true  -->
		<p><input type="text" name="title" /></p>
		<!--item.isFormField(): false  -->
		<p><input type="file" name="filename" /></p>
		<p><input type="submit" value="파일올리기" /></p>
	</form>
</body>
</html>