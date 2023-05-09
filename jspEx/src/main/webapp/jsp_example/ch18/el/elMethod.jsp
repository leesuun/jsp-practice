<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import="ch18.ELMethod" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
System.out.println(ELMethod.print());

%>
  <h2>EL의 정적 메소도</h2>
  123456789를 1000단위 구분 기호(,)로 표시하시오.
  <p />

  <b>result : ${ELMethod.comma(123456789) }</b>
  <br />
  <%-- \
  <b>print : ${m:print()}</b> --%>



</body>
</html>