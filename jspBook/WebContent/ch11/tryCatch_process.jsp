<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<%
		try{
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			
			out.print("num1: "+num1 +",num2:"+num2);
		
			int a = Integer.parseInt(num1);
			int b = Integer.parseInt(num2);
			int c = a / b;
			
			out.print("<p>"+num1+"/"+num2+"="+c+"</p>");
		}catch(NumberFormatException e){
			//오류가 발생하면 tryCatch_error.jsp로 포워딩 
			//request객체와 response객체를 전달해줌
			//tryCatch_error.jsp에서도 요청파라미터 num1=12
			RequestDispatcher dispatcher=
				request.getRequestDispatcher("tryCatch_error.jsp");
			dispatcher.forward(request,response);	
				
		}	
	%>
</body>
</html>