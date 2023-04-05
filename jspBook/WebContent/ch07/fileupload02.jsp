<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<!-- 
	요청URI : fileupload02_process.jsp
	요청파라미터 : {memId=a001,memPass=java,filename=파일객체}
	 -->
	<form action="fileupload02_process.jsp" method="post"
		enctype="multipart/form-data">
		<!-- 폼데이터 -->
		<p>아이디 : <input type="text" name="memId" required /></p>
		<p>비밀번호 : <input type="password" name="memPass" required /></p>
		<p>파일 : <input type="file" name="filename" /></p>
		<p><input type="submit" value="로그인" /></p>
	</form>
</body>
</html>