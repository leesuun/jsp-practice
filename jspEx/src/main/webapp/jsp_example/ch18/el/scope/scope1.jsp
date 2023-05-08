<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  pageContext.setAttribute("msg", "꿈은 이루어 진다.");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>EL의 Scope1</h2>
<%
 int sum = 0;
  for (int i=1; i<=10; i++) sum += i;
  request.setAttribute("sum", new Integer(sum));
%>
<jsp:forward page="scope2.jsp" />
</body>
</html>