<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css"/>
<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/js/validation.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>

<title>이슬 쇼핑몰</title>
</head>
<body>
	<!--
	리소스번들 메세지처리태그에서 사용하는 파일로 메세지번들이라고도 함 
	java.util.Properties 클래스에 정의된 방법으로 메시지를 읽어오기 때문에 확장자가 properties인 파일이 있어야함  -->
	<!--http://localhost/addProduct.jsp?language=ko  -->
	<fmt:setLocale value="${param.language}"/>
	<fmt:bundle basename="bundle.message">
	<!--include 액션 태그  -->
	<jsp:include page="menu.jsp"/>
	<!--상품 목록 시작  -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="title"/></h1>
		</div>
	</div>
	<!--내용 시작  -->
	<div class="container">
		<div class="text-right">
			<a href="/addProduct.jsp?language=ko">Korean</a> |
			<a href="/addProduct.jsp?language=en">English</a>
			<%
				//request.getRemoteUser(): 인증(로그인)된 사용자 아이디를 가져옴 
				if(request.getRemoteUser()!=null){
					out.print("|");
					out.print("<button type='button' class='btn btn-primary' data-bs-toggle='modal' data-bs-target='#exampleModal'>MyPage</button>");
					out.print("|");
					out.print("<a href='/logout.jsp' type='button' class='btn btn-sm btn-success pull-right'>logout</a>");
				}
			%>
		</div>
		<!--폼필드.post : 파라미터들을 가려서 서버로 전송  -->
		<form name="newProduct" action="processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="productId"/></label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control" required/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="pname"/></label>
				<div class="col-sm-3">
					<input type="text" name="pname" class="form-control" required/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
				<div class="col-sm-3">
					<input type="number" name="unitPrice" class="form-control" required/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description"/></label>
				<div class="col-sm-5">
					<textarea name="description" rows="2" col="50" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="manufacturer"/></label>
				<div class="col-sm-3">
					<select name="manufacturer" class="form-control">
						<option value="Apple">Apple</option>
						<option value="LG">LG</option>
						<option value="Samsung">Samsung</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="category"/></label>
				<div class="col-sm-3">
					<select name="category" class="form-control">
						<option value="Smart Phone">Smart Phone</option>
						<option value="Notebook">Notebook</option>
						<option value="Tablet">Tablet</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
				<div class="col-sm-3">
					<input type="number" name="unitsInStock" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="condition"/></label>
				<div class="col-sm-5">
					<input type="radio" id="condition1" name="condition" value="New"/>
												<label for="condition1"><fmt:message key="condition_New"/></label>
					<input type="radio" id="condition2" name="condition" value="Old"/>
												<label for="condition2"><fmt:message key="condition_Old"/></label>
					<input type="radio" id="condition3" name="condition" value="Refurbished"/>
												<label for="condition3"><fmt:message key="condition_Refurbished"/></label>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="productImage"/></label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control" />
					
				</div>
			</div>
			<div class="form-group row" id="cardImages">
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button"class="btn btn-primary" value="<fmt:message key="button"/>"
					id="CheckAddProduct"/>
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
	
<script type="text/javascript">
	CKEDITOR.replace("description")
</script>	
<script type="text/javascript">
let sel_file=[];
$("input[name='productImage']").on("change",handleImgFileSelect);

function handleImgFileSelect(e){
	let files = e.target.files;
	let fileArr = Array.prototype.slice.call(files);
	
	fileArr.forEach(function(f){
		if(!f.type.match("image.*")){
			alert("이미지 확장자만 가능합니다.")
			return;
		}
		sel_file.push(f);
		let reader = new FileReader();
		//e:리더가 이밎를 읽을때 이벤트
		reader.onload=function(e){
			let img_html = "<img src='"+e.target.result+"'style='width:50%'/>";
			$("#cardImages").append(img_html);
		}
		reader.readAsDataURL(f);
	});
}


</script>
</fmt:bundle>

<!--Modal  -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>사용자명:<%=request.getRemoteUser() %></p>
        <p>인증방법:<%=request.getAuthType() %></p>
        <p>tomcat 역할에 속하는 사용자인가요?<%=request.isUserInRole("tomcat") %></p>
        <p>role1 역할에 속하는 사용자인가요?<%=request.isUserInRole("role1") %></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>