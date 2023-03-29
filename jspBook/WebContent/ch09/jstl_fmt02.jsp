<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
	<h2> Internationalization</h2>
	<p>숫자: <fmt:formatNumber value="3200100"/> </p>
	<p><fmt:formatNumber value="3200100" type="number"/> </p>
	<p><fmt:formatNumber value="3200100" type="number" groupingUsed="false"/> </p>
	<p><fmt:formatNumber value="3200100" type="currency" groupingUsed="true"/> </p>
	<p><fmt:formatNumber value="3200100" type="currency" currencySymbol="금"/> </p>
	<p><fmt:formatNumber value="0.45" type="percent" /> </p>
	<p><fmt:formatNumber value="3200100" minIntegerDigits="10" minFractionDigits="2" /> </p>
	<p><fmt:formatNumber value="3200100.45" pattern=".000" /> </p>
	<!--천단위 구분기호, 소수점 2자리   -->
	<p><fmt:formatNumber value="3200100.45" pattern="#,#00.0#" /> </p>
</body>
</html>