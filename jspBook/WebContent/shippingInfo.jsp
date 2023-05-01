<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<script type="text/javascript" src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="js/jquery-3.6.4.min.js"></script>
<title>이슬 쇼핑몰</title>
<script type="text/javascript">
//document 모든 요소들이 로딩되고 실행..
$(function(){
	$("#btnSearch").on("click",function(){
		console.log("개똥이");
		
		new daum.Postcode({
			oncomplete:function(data){
				$("input[name='zipCode']").val(data.zonecode);//우편번호
				$("input[name='addressName']").val(data.address);
				$("input[name='addressDetName']").val(data.buildingName);
			}
		}).open();
	});
	//자동입력 버튼
	$("#btnAuto").on("click",function(){
		$("input[name='name']").val("이름");
		$("input[name='shippingDate']").val("2020-10-10");
		$("input[name='country']").val("대한민국");
		$("input[name='zipCode']").val("12345");//우편번호
		$("input[name='addressName']").val("대전");
		$("input[name='addressDetName']").val("123-5");
	});
});

</script>
</head>
<body>
	<jsp:include page="menu.jsp" />

	<!-- 장바구니 목록 시작  -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">배송 정보</h1>
		</div>
	</div>
	
	
	<div class="container">
		<form action="processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId") %>"/>
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control"/>
					<button type="button" id="btnAuto" class="btn btn-sm btn-secondary">자동입력</button>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">배송일</label>
				<div class="col-sm-3">
					<input type="date" name="shippingDate" class="form-control"/>(yyyy-MM-dd)
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">국가명</label>
				<div class="col-sm-3">
					<input type="text" name="country" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-3">
					<!--disabled: 파라미터로 안넘어감  /readonly: 파라미터로 값 넘어감   -->
					<input type="text" name="zipCode" class="form-control" readonly/>
					<input type="button" id="btnSearch" class="btn btn-warning" value="우편번호검색"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" name="addressName" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상세주소</label>
				<div class="col-sm-3">
					<input type="text" name="addressDetName" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="cart.jsp?cartId=<%=request.getParameter("cartId")%>"
						class="btn btn-secondary" role="button">이전</a>
					<input type="submit" name="cartId" class="btn btn-primary" value="등록"/>
					<a href="checkOutCancelled.jsp"
						class="btn btn-secondary" role="button">취소</a>
				</div>
			</div>
		</form>
	</div>
	
	
	
	<jsp:include page="footer.jsp" />
	
</body>
</html>