<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%
  pageContext.setAttribute("msg", "꿈은 이루어 진다.");
%> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>EL의 Scope1</h2>
msg(pageScope로 받은값) : <b>${pageScope.msg}</b><p/>
1에서 10까지 합(request로 받은값) : <b><%=request.getAttribute("sum") %></b><p/>
1에서 10까지 합(requestScope로 받은값) : <b>${requestScope.sum}</b><p/>
<%-- <p>${requestScope}</p> --%>
</body>
</html>
