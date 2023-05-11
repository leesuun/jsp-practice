<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
  isErrorPage="true" errorPage="calcB_err.jsp"
%>
<%@ page import="ch18.ElcalcBean" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>계산기</h2>
  <hr />
  <form action="Elcalc.jsp" method="post">
    <input type="number" name="num1" value="${param.num1}" />
    <select name="oper">
      <option value="+" ${param.oper.equals("+") ? "selected" : "" }>+</option>
      <option value="-" ${param.oper.equals("-") ? "selected" : "" }>-</option>
      <option value="*" ${param.oper.equals("*") ? "selected" : "" }>*</option>
      <option value="/" ${param.oper.equals("/") ? "selected" : "" }>/</option>
    </select>
    <input type="number" name=num2 value="${param.num2}" />
    =
    <input type="submit" value="계산" />
  </form>
  <span>
    <%-- result = ${C:/Users/user/git/repository/jspEx/src/main/java/ch18/ElcalcBean.calc(param.num1, param.oper, param.num2)} --%>
     result = ${ElcalcBean.calc(param.num1, param.oper, param.num2) } 
    </span>
 
</body>
</html>