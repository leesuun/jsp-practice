<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<%!String msg;%>
<%
request.setCharacterEncoding("EUC-KR");
String name = request.getParameter("name");
String color = request.getParameter("color");

if (color.equals("blue")) {
	msg = "�Ķ���";
} else if (color.equals("red")) {
	msg = "������";
} else if (color.equals("orange")) {
	msg = "��������";
} else {
	color = "white";
	msg = "��Ÿ��";
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor=<%=color%>>

	<b><%=name%></b>���� �����ϴ� ������
	<b><%=msg%></b>�Դϴ�.
	<h1>If-else Example</h1>
</body>
</html>
