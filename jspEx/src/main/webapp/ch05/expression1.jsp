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
	<h1>Expression Example1</h1>
	<%!String name[] = { "Java", "Jsp", "Android", "Struts" };%>
	<table border="1" width="200">
		<%
		for (int i = 0; i < name.length; i++) {
		%>
		<tr>
			<td><%=i%></td>
			<td><%=name[i]%></td>
		</tr>
		<%
		}
		%>
	</table>

</body>
</html>