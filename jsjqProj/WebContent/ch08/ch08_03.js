//jQuery도 자바스크립트의 라이브러리이므로 확장자가 .js인 별도의 자바스크립트 파일로 저장 가능
//HTML 문서에서 자바스크립트를 임포트하는 방법과 동일하게 외부 파일을
//<script> 태그의 src 속성 값으로 지정하여 불러올 수 있음
	$(document).ready(function(){
	    $("button").click(function(){
	        $("p").hide();
	    });
	});
