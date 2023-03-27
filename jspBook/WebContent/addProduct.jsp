<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" href="/css/bootstrap.min.css"/>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<!--include 액션 태그  -->
	<jsp:include page="menu.jsp"/>
	<!--상품 목록 시작  -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<!--내용 시작  -->
	<div class="container">
		<!--폼필드.post : 파라미터들을 가려서 서버로 전송  -->
		<form name="newProduct" action="processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">상품코드</label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control" required/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="pname" class="form-control" required/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="number" name="unitPrice" class="form-control" required/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상세정보</label>
				<div class="col-sm-5">
					<textarea name="description" rows="2" col="50" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<select name="manufacturer" class="form-control">
						<option value="Apple">Apple</option>
						<option value="LG">LG</option>
						<option value="Samsung">Samsung</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<select name="category" class="form-control">
						<option value="Smart Phone">Smart Phone</option>
						<option value="Notebook">Notebook</option>
						<option value="Tablet">Tablet</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">재고수</label>
				<div class="col-sm-3">
					<input type="number" name="unitsInStock" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-5">
					<input type="radio" id="condition1" name="condition" value="New"/>
												<label for="condition1">신규제품</label>
					<input type="radio" id="condition2" name="condition" value="Old"/>
												<label for="condition2">중고 제품</label>
					<input type="radio" id="condition3" name="condition" value="Refurbished"/>
												<label for="condition3">재생제품</label>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품이미지</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control" />
					
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit"class="btn btn-primary" value="등록"/>
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
	
<script type="text/javascript">
	CKEDITOR.replace("description")
</script>	
</body>
</html>