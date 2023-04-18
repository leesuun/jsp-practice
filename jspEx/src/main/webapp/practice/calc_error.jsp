<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>계산기 에러 페이지</h1>
	<hr />
	<%
	if (session.getAttribute("err").toString().contains("by zero")) {

		out.println("<p>0으로 나눌 수 없습니다.!!</p>");
	} else {
		System.out.println(session.getAttribute("err"));
		out.println("<p>정수만 입력하세요!!</p>");

	}
	%>

</body>
</html>