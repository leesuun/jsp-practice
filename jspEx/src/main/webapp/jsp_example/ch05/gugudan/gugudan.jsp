<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
/* span {
	display: inline-block;
	width: 200px;
} */
body {
	background-color: black;
	color: white;
}

span {
	display: inline-block;
	width: 80px;
	border: 1px solid white;
	padding: 5px;
	text-align: center;
	background-color: red;
}
</style>
</head>
<body>
	<h1>gugudan Example</h1>
	<%
	/* request.setCharacterEncoding("UTF-8");
	int gugudan = Integer.parseInt(request.getParameter("gugudan")); */

	/* out.println("<h1>" + gugudan + "단출력" + "</h1>" + "<br/>"); */
	/* for (int i = 1; i <= 9; i++) {
		out.println(gugudan + " * " + i + " = " + (gugudan * i) + "<br>");
	} */

	for (int i = 2; i <= 10; i++) {
		out.println("<div>");
		for (int j = 1; j < 9; j++) {
			out.println("<span>" + (j + 1) + " * " + (i - 1) + " = " + ((j + 1) * (i - 1)) + "</span>");
			System.out.print((j + 1) + " * " + (i - 1) + " = " + ((j + 1) * (i - 1)) + "\t");
		}
		System.out.println("");
		out.println("</div>");
		out.println("<br>");
	}
	%>

</body>
</html>