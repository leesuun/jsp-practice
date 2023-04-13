<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: black;
	color: white;
}
</style>

</head>
<body>
	<%
	/* 지역 변수 */
	int num1 = 10;
	int num2 = 5;
	%>
	<%!/* 전역 변수 */
	int num1 = 100;
	int num2 = 50;%>
	<h1>스크립트릿 사용 혼자 해보기</h1>

	<span>맴버변수 선언문</span>
	<br>
	<span>지역변수 선언문</span>
	<br>
	<span>결과값: <%=num1%> - <%=num2%> = <%=num1 - num2%></span>
</body>
</html>