<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int one;
	int two = 1;

	public int plusMethod() {
		return one + two;

	}

	String msg;
	int three;%>
	<p>
		one와 two의 합은 ?
		<%=plusMethod()%></p>
</body>
</html>