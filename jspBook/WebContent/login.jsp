<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title>쇼핑몰</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	
	<!-- /////////////////// 로그인 폼 시작 ////////////////////// -->
	<!-- container : 내용이 들어옴 -->
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<% //스크립틀릿
				// /login.jsp?error=1
				String error = request.getParameter("error");	//"1"
				if(error != null){//오류 발생 시
					out.print("<div class='alert alert-danger'>");
					out.print("아이디와 비밀번호를 확인해주세요");
					out.print("</div>");
				}
			%>
<!-- 			p.350 <auth-method>FORM</auth-method> -->
			<form class="form-signin" action="j_security_check" method="post">
				<!-- 아이디 입력 영역, j_username라고 무조건 사용해야 함
				autofocus : 페이지가 로딩되면 자동으로 커서가 껌벅임 -->
				<div class="form-group">
					<label for="inputUserName" class="sr-only">Use Id</label>
					<input type="text" class="form-control" placeholder="ID를 입력해주세요"
						name="j_username" required autofocus />
				</div>
				<!-- 비밀번호 입력 영역, j_password라고 무조건.. -->
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label>
					<input type="password" class="form-control" placeholder="비밀번호를 입력해주세요"
						name="j_password" required />
				</div>
				<!-- submit버튼 영역 -->
				<!-- <button type="button|submit|reset"... -->
				<button type="submit" class="btn btn btn-lg btn-success btn-block">로그인</button>
			</form>
		</div>
	</div>
	<!-- /////////////////// 로그인 폼 끝 ////////////////////// -->
	
	<jsp:include page="footer.jsp" />
</body>
</html>










