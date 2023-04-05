<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<!-- tryCatch_process.jsp?num1=12&num2=6 (o)-->
	<!-- tryCatch_process.jsp?num1=12&num2=0 (x)-->
	<% //스크립틀릿
	try{
		String num1 = request.getParameter("num1");//"12"
		String num2 = request.getParameter("num2");//"0"
		
		out.print("num1 : " + num1 + ", num2 : " + num2);
		
		int a = Integer.parseInt(num1);//12
		int b = Integer.parseInt(num2);//0
		//오류 발생! 12 / 0
		int c = a / b;
		
		out.print("<p>" + num1 + "/" + num2 + " = " + c + "</p>");
	}catch(ArithmeticException e){
		//오류가 발생하면 tryCatch_error.jsp로 포워딩.
		//request객체와 response객체를 전달해줌
		//tryCatch_error.jsp에서도 요청파라미터 num1=12&num2=0을 사용할 수 있음
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher("tryCatch_error.jsp");
		dispatcher.forward(request, response);
	}
	%>
</body>
</html>








