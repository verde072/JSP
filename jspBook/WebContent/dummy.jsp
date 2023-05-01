<%@page import="java.util.Enumeration"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%   //스크립틀릿
   /* 
   요청URI : processShippingInfo.jsp 
   요청파라미터 : {cartId=EA58DBCF30589586FAE5970B580A8556,
            name=개똥이,shippingDate=2023-04-11,country=대한민국,zipCode=12345,
            addressName=대전 중구 대흥동,addDetName=123} 
   */
   request.setCharacterEncoding("UTF-8");
   
   //파라미터 검증
   Enumeration paramNames = request.getParameterNames();
   //열거형 요소가 있으면 true반환
   while(paramNames.hasMoreElements()){
      String name = (String)paramNames.nextElement();   //name값
      String paramValue = request.getParameter(name);   //value값
      out.print("<p>" + name + " : " + paramValue + "</p>");
   }
   
   //쿠키 쿠키 뉴~ 쿠키 네임 밸류
   //리스폰스 애드 쿠키
   //요청파라미터 데이터를 쿠키에 넣음
   Cookie cartId       = new Cookie("Shipping_cartId",URLEncoder.encode(request.getParameter("cartId")));
   Cookie name         = new Cookie("Shipping_name",URLEncoder.encode(request.getParameter("name")));
   Cookie shippingDate = new Cookie("Shipping_shippingDate",URLEncoder.encode(request.getParameter("shippingDate")));
   Cookie country      = new Cookie("Shipping_country",URLEncoder.encode(request.getParameter("country")));
   Cookie zipCode      = new Cookie("Shipping_zipCode",URLEncoder.encode(request.getParameter("zipCode")));
   Cookie addressName  = new Cookie("Shipping_addressName",URLEncoder.encode(request.getParameter("addressName")));
   Cookie addDetName   = new Cookie("Shipping_addDetName",URLEncoder.encode(request.getParameter("addDetName")));
   
   //쿠키 유효 기간을 1일로 설정(초단위)
   cartId.setMaxAge(24*60*60);
   name.setMaxAge(24*60*60);
   shippingDate.setMaxAge(24*60*60);
   country.setMaxAge(24*60*60);
   zipCode.setMaxAge(24*60*60);
   addressName.setMaxAge(24*60*60);
   addDetName.setMaxAge(24*60*60);
   
   //생성된 쿠키를 response객체에 등록
   response.addCookie(cartId);
   response.addCookie(name);
   response.addCookie(shippingDate);
   response.addCookie(country);
   response.addCookie(zipCode);
   response.addCookie(addressName);
   response.addCookie(addDetName);
%>







