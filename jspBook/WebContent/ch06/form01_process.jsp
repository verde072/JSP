<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	//request 객체의 encoding 처리 해보자
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String passwd  = request.getParameter("passwd");
	String name  = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	/*체크박스는 배열로, Values로 받아야 함  */
	String[] hobby = request.getParameterValues("hobby");
	String city = request.getParameter("city");
	String food = request.getParameter("food");
%>
<p>id: <%=id %></p>
<p>passwd: <%=passwd %></p>
<p>name: <%=name %></p>
<p>phone1: <%=phone1 %></p>
<p>phone2: <%=phone2 %></p>
<p>phone3: <%=phone3 %></p>
<p>gender: <%=gender %></p>
<%
for(String str: hobby){
	out.print("<p>"+str+"</p>");
}
%>
<p>hobby: <%=hobby %></p>
<p>city: <%=city %></p>
<p>food: <%=food %></p>