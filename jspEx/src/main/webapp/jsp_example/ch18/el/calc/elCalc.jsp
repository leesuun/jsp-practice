<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
  isErrorPage="true" errorPage="calcB_err.jsp"
%>

<%
String oper = request.getParameter("oper");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>계산기</h2>
  <hr />
  <form action="elCalc.jsp" method="post">
    <input type="number" name="num1" value="${param.num1}" />
    <select name="oper">
      <option value="+" ${param.oper.equals("+") ? "selected" : "" }>+</option>
      <option value="-" ${param.oper.equals("-") ? "selected" : "" }>-</option>
      <option value="*" ${param.oper.equals("*") ? "selected" : "" }>*</option>
      <option value="/" ${param.oper.equals("/") ? "selected" : "" }>/</option>
    </select>
    <input type="number" name=num2 value="${param.num2}" />
    <%
    if (oper != null) {
    	switch (oper) {
    	case "+": {
    %>
    <input type="number" name="result" disabled="disabled" value="${param.num1 + param.num2}" />
    <%
    break;
    }
    case "-": {
    %>
    <input type="number" name="result" disabled="disabled" value="${param.num1 - param.num2}" />

    <%
    break;
    }
    case "*": {
    %>
    <input type="number" name="result" disabled="disabled" value="${param.num1 * param.num2}" />
    <%
    break;
    }
    case "/": {
    /* System.out.println(1 / 0);  */
    %>
    <input type="text" name="result" disabled="disabled" value="${param.num1 / param.num2}" />
    <%
    break;
    }
    }
    }
    %>
    <input type="submit" value="계산" />
  </form>

</body>
</html>