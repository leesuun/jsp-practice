<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="calcB_err.jsp"%>

<jsp:useBean id="calc" class="ch09.CalcBean" />
<jsp:setProperty property="*" name="calc" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css" />
</head>
<body>
	<div class="wrapper">
		<%
		if (request.getMethod().equals("POST")) {
			calc.calculate();
			out.println("<h1>JavaBeans 계산 결과</h1>");
			out.println("<hr>");
		}
		%>
		<jsp:getProperty property="num1" name="calc" />
		<jsp:getProperty property="oper" name="calc" />
		<jsp:getProperty property="num2" name="calc" />
		=
		<jsp:getProperty property="result" name="calc" />
	</div>
</body>
</html>