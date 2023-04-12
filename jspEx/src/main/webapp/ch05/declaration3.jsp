<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!int num1 = 100;
	int num2 = 50;

	public int calc() {
		return num1 - num2;
	}%>

	<h1>선언문 실습 혼자해보기</h1>
	<hr>
	<p>
		num1 - num2 =
		<%=calc()%></p>

</body>
</html>