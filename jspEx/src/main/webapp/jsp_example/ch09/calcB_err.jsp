<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css" />
</head>
<body>
	<div class="wrapper">
		<h1>에라 페이지</h1>
		<hr />
		<%
		if (exception.getMessage().contains("by zero")) {
			out.println("error: 0으로 나눌 수 없습니다.");
		} else {
			out.println("error: 정수만 입력해 주세요.");
		}
		%>
	</div>
</body>
</html>