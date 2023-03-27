<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>

<title>이슬 쇼핑몰</title>
<script type="text/javascript">
//document의 요소들이 모두 로딩된 후에 실행
$(function (){
	//<input type="button" id="btnSubmit" value="가입하기"/>
	$("#btnSubmit").on("click",function(){
		let id =$("input[name='id']").val();
		
		if(id==""){
			alert("아이디를 입력해주세요");
			$("input[name='id']").focus();
			return;
			
		}
		//<input type="button" id="passwd" required=""/>
		let passwd=$("input[name='passwd']").val();
		
		if(passwd==""){
			alert("비밀번호를 입력해주세요.");
			$("input[name='passwd']").focus();
			return
		}
		
		//<input type="button" id="name" required=""/>
		let name=$("input[name='name']").val();
		
		if(name==""){
			alert("이름을 입력해주세요.");
			$("input[name='name']").focus();
			return
		}
		
		let phone1 = $("select[name='phone1']").val();
		let phone2 = $("input[name='phone2']").val();
		let phone3 = $("input[name='phone3']").val();
		let phone = phone1 + "-" + phone2 + "-" + phone3;
		
		console.log("phone1: "+phone1);
		console.log("phone2: "+phone2);
		console.log("phone3: "+phone3);
		
		$("input[name='phone']").val(phone);
		
		//폼을 submit 
		$("form").submit();
 	});
 });

</script>
</head>
<body>
<!--
필수(mandatory): 아이디, 비밀번호, 이름, 연락처
선택(optional): 키, 몸무게, 취미, 특기
  -->
	<h3>회원 가입</h3>
	<form action="form02_process.jsp" method="post">
		<p>
			아이디: <input type="text" name="id" required/>
		</p>
		<p>비밀번호: <input type="password" name="passwd" required/></p>
		<p>이름: <input type="text" name="name" required/></p>
		<p>
			연락처:<input type="text" id="phone" name="phone"/>
			<select name="phone1">
				<option value="010">010</option>
				<option value="011" selected>011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
			-<input type="text" maxlength="4" size="4" name="phone2"/>
			-<input type="text" maxlength="4" size="4" name="phone3"/>
		</p>
		<p>
			성별: <input type="radio" name="gender" value="남성" checked/>남성
				 <input type="radio" name="gender" value="여성" />여성
		</p>
		<p>
		<!--String [] hobby = request.getParameterValues("hobby");  -->
			취미: 독서<input type="checkbox" name="hobby" value="독서"/>
				 운동<input type="checkbox" name="hobby" value="운동"/>
				 영화<input type="checkbox" name="hobby" value="영화"/>
		</p>
		<p>
			<!--다중행 입력 rows: 행, cols:열수 -->
			<textarea rows="3" cols="30" name="comment" placeholder="가입인사를 입력해주세요"></textarea>
		
		</p>
		<p>
			<input type="button" id="btnSubmit" value="가입하기" />
			<!--reset의 폼데이터의 값이 초기화 됨  -->
			<input type="reset" value="다시쓰기" />
		</p>
	</form>
<script type="text/javascript">
	CKEDITOR.replace("comment")
</script>
</body>
</html>