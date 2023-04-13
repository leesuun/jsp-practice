<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>gugudan Example</h1>
	<%
	request.setCharacterEncoding("UTF-8");
	int gugudan = Integer.parseInt(request.getParameter("gugudan"));

	out.println("<h1>" + gugudan + "단출력" + "</h1>" + "<br/>");
	for (int i = 1; i < 10; i++) {
		out.println(gugudan + " * " + i + " = " + (gugudan * i) + "<br>");
	}
	%>



</body>
</html>