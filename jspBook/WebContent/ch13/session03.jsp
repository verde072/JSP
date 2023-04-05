<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
</head>
<body>
	<% //스크립틀릿
		//session.setAttribute(이름, 값)
		//값 : Object객체 타입 가능. int(x), double(x), char(x)
		//session.setAttribute("userId",user_id);//admin
		//session.setAttribute("userPw",user_pw);//java
		//session 내장 객체 내 어떤 속성값들이 있는지?
		String name; String value;
		int i = 0;
		
		Enumeration en = session.getAttributeNames();//userId, userPw
		//세션 속성 이름이 있을때까지만 반복
		//en.hasMoreElements() : fetch
		while(en.hasMoreElements()){//2회 반복
			name = en.nextElement().toString();	//userId 다음에는 userPw가 가져와짐
			//session.getAttribute("userId")
			value = session.getAttribute(name).toString();	//admin 다음에는 java가 가져와짐
			
			out.print("설정된 세션 속성 명[" + i + "] : " + name + "<br />");
			out.print("설정된 세션 속성 값[" + i + "] : " + value + "<br />");
			
			i++;
			
			out.print("<hr />");
		}
	%>
</body>
</html>






