<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP 계산기</h1>
	<hr />
	<%
	String oper = request.getParameter("operation");
	int result = 0;
	int num1 = 0, num2 = 0;
 
	try {
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
	} catch (NumberFormatException e) {
		// TODO: handle exception
		session.setAttribute("err", e);
		response.sendRedirect("calc_error1.jsp");
		return;
	}

	switch (oper) {
	case "+":
		result = (num1 + num2);
		break;
	case "-":
		result = (num1 - num2);
		break;
	case "*":
		result = (num1 * num2);
		break;
	case "/":
		try {
			result = (num1 / num2);
		} catch (ArithmeticException e) {
			// TODO: handle exception
			session.setAttribute("err", e);
			response.sendRedirect("calc_error1.jsp");
			return;
		}
		break;
	}

	out.println("<h2>계산 결과:" + Integer.toString(num1) + oper.toString() + Integer.toString(num2) + "=" + result + "</h2>");
	System.out.println(num1 + " " + num2 + " " + oper);
	%>

</body>
</html>