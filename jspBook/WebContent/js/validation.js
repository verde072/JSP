$(function(){
	$("#CheckAddProduct").on("click",function(){
		let productId=$("input[name='productId']").val();
		let pname=$("input[name='pname']").val();
		let unitPrice=$("input[name='unitPrice']").val();
		let unitsInStock=$("input[name='unitsInStock']").val();
		
		let jsonData={"productId":productId,"pname":pname,"unitPrice":unitPrice,"unitsInStock":unitsInStock};
		console.log("jsonData:"+JSON.stringify(jsonData));
		
		//상품아이디체크
		//첫글자는 p, 숫자를 조합하여 5-12자까지 입력가능
		//[0-9]: 0~9사이 한 숫자
		let regExpProductId=/^P[0-9]{4,11}$/;
		if(!check(regExpProductId,productId,"[상품 아이디]\nP와 숫자를 조합하여 5-12자 까지 입력해주세요. \n 첫 글자는 P로 시작해주세요")){
			return false;
		}
		
		//상품명 4-12자까지
		if(pname.length<4 || pname.length>12){
			alert("[상품명]\n최소 4자에서 최대 12자까지 입력해주세요");
			return false;
		}
		
		if(unitPrice.length==0||isNaN(unitPrice)){
			alert("[가격]\n숫자만 입력해주세요");
			return false;
		}
		
		if(unitPrice<0){
			alert("[가격]\n음수는 입력할 수 없습니다.");
			return false;
		}
		
		//상품가격 숫자만 입력가능 
		//(?:y): 그룹들의 집합에 대한 예외  :뒤에 나오는건 있어도 그만 없어도 그만이란뜻 
		let regExpUnitPrice =/^\d+(?:[.]?[\d]?[\d]?)$/;
		if(!check(regExpUnitPrice,unitPrice,"[가격]\n소수점 둘째 자리까지만 입력해주세요")){
			return false;
		}
		
		let counter=0;
		//radio요소가 3개여서 3회 반복
		$("input[name='condition']").each(function(index){
			
			if($(this).is(":checked")){
				counter=counter+1;
			}
		});
		
		console.log("counter:"+counter)
		if(counter<1){
			alert("상태를 선택해주세요");
			return;
		}
		
		let regExpInStock=/^[0-9]+$/;
		if(!regExpInStock.test(unitsInStock)){
			alert("[재고 수 ]\n숫자만 입력해주세요")
			return false;
		}
		
		$("form[name='newProduct']").submit();
		
	});//end onclick
	
	function check(regExp,value,msg){
		if(regExp.test(value)){
			return true;
		}
		//통과하지 못하면
		alert(msg);
		return false;
	}
});
