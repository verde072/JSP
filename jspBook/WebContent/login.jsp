<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css"/>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<!--로그인 폼 시작  -->
	<!--container: 내용이 들어옴   -->
	<div class="container" align="center">
	
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in </h3>	
			<%
				String error = request.getParameter("error");
				if(error != null){
					out.print("<div class='alert alert-danger'>");
					out.print("아이디와 비밀번호를 확인해주세요 ");
					out.print("</div>");
				}
			%>
			<form class="form-signin" action="j_security_check" method="post">
				<!--아이디 입력 영역, j_username이라고 무조건 사용해야함   -->
				<div class="form-group">
					<lable for="inputUserName" class="sr-only">Use Id</lable>
					<input type="text" class="form-control" placeholder="ID를 입력해주세요"
						name="j_username" required autofocus />
				</div>
				<!--비밀번호 입력 영역, j_password이라고 무조건 사용해야함   -->
				<div class="form-group">
					<lable for="inputUserName" class="sr-only">Use Id</lable>
					<input type="password" class="form-control" placeholder="비밀번호를 입력해주세요"
						name="j_password" required />
				</div>
				<!--submit버튼 영역  -->
				<!--<button type="button,submit,reset" -->
				<button type="submit" class="btn btn btn-lg btn-success btn-block"> 로그인 </button>
				
			</form>			
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>