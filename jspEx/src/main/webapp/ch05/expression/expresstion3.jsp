<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 선언문 사용 --%>
	<%!/* 멤버변수 초기화*/
	int num1;
	int num2;

	/* 메서드 선언*/
	public int multiple(int a, int b) {
		return a + b;
	}%>

	<%-- 스크립트릿 멤버변수 초기화 --%>
	<%
	num1 = 10;
	num2 = 20;
	%>
	
	<h1>선언문, 스크립트릿, 표현식, 주석문 사용 예제</h1>
	<%-- 표현식을 이용한 출력 --%>
	<p>
		표현식을 이용한 출력:
		<%=multiple(num1, num2)%></p>

	<%-- 스크립트릿을 이용한 출력 --%>
	<p>
		스크립트릿 이용 출력:
		<%
	out.println(multiple(num1, num2));
	%>
	</p>

</body>
</html>