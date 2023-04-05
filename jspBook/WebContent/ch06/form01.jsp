<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery-3.6.4.min.js"></script>
<title>쇼핑몰</title>
<script type="text/javascript">
//document 로딩이 완료되면 수행
$(function(){
	//셀렉터
	$("#btnDupChk").on("click",function(){
		/*JSON은 웹 서버와 데이터를 교환하는데 주로 사용됨
		- AJAX 요청을 사용해서 서버에 JSON을 요청할 수 있음
		- 서버의 응답이 JSON 형식으로 작성된 경우 문자열을 자바스크립트 객체로 파싱(구문분석/의미분석)할 수 있음
		*/		
		
		let jsonData = [{id:"a001"},{id:"b001"},{id:"c001"},{id:"d001"},{id:"e001"}];
		
		console.log("jsonData : " + JSON.stringify(jsonData));
		//선택자
		let id = $("input[name='id']").val();	//c001
		
		//id값이 없으면 함수 종료
		if(id==""){
			alert("아이디를 입력해주세요.");
			//focus() : 커서가 위치
			$("input[name='id']").focus();
			//함수를 종료
			return;
		}
		
		//반복
		//value : {id:"a001"} 1개씩
		$.each(jsonData,function(key,value){
			console.log("id : " + value.id);
			
			if(id==value.id){//중복 값이 있다면
				alert("아이디가 중복 되었습니다.");
				//value값을 초기화
				$("input[name='id']").val("");
				//focus() : 커서가 위치
				$("input[name='id']").focus();
			}
		});
	});
});
</script>
</head>
<body>
	<h2>Form Processing</h2>
	<h3>회원 가입</h3>
	<!-- 요청방식 : post(파라미터들을 가려서 톰켓으로 보냄) -->
	<form action="form01_prcess.jsp" name="member" method="post">
		<!-- 폼 데이터 -->
		<p>
			아이디 : <input type="text" name="id" required />
			<!-- required : submit버튼 클릭 시 체킹 -->
			<input type="button" id="btnDupChk" value="아이디 중복 검사" />
		</p>
		<p>비밀번호 : <input type="password" name="passwd" required /></p>
		<p>이름 : <input type="text" name="name" required /></p>
		<p>
			연락처 : <input type="text" maxlength="4" size="4" name="phone1" />
			- <input type="text" maxlength="4" size="4" name="phone2" />
			- <input type="text" maxlength="4" size="4" name="phone3" />
		</p>
		<p>
			<!-- radio : 하나만 체크. name의 value가 동일해야 함(String)-->
			성별 : <input type="radio" name="gender" value="남성" checked />남성
				 <input type="radio" name="gender" value="여성" />여성
		</p>
		<p>
			<!-- checked : 처음부터 체크가 되어 있음. 다중 체크(배열. String[]) -->
			취미 : 독서<input type="checkbox" name="hobby" value="book" checked />
				 운동<input type="checkbox" name="hobby" value="excercise" />
				 영화<input type="checkbox" name="hobby" value="movie" />
		</p>
		<p>
			<select name="city" size="3">
				<option value="대전광역시">대전광역시</option>
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="인천">인천</option>
				<option value="충청">충청</option>
				<option value="전라">전라</option>
				<option value="경상">경상</option>
			</select>
		</p>
		<p>
			<select name="food">
				<optgroup label="분식류">
					<option value="ddeukboki">떡볶이</option>
					<option value="sundai">순대</option>
				</optgroup>
				<optgroup label="안주류">
					<option value="ttuikim">튀김</option>
					<option value="sixhoi">육회</option>
				</optgroup>
				<optgroup label="찌개류">
					<option value="doinjangjjigae">된장찌개</option>
					<option value="budaejjigae">부대찌개</option>
					<option value="kimchijjigae">김치찌개</option>
				</optgroup>
			</select>
		</p>
		<p>
			<!-- action="URI경로"를 요청 -->
			<input type="submit" value="가입하기 " />
			<input type="reset" value="다시쓰기" />
		</p>
	</form>
</body>
</html>





