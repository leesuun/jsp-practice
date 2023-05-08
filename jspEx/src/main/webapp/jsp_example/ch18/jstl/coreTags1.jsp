<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String str1 = "JAVA의 JSTL";
String str2 = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>Core Tags2</h2>
  <c:set var="str3" value="JSPStudy" scope="page" />
  <c:set var="str4" value="JSTL" scope="session" />
  -
  <c:out value="<%=str1%>" default="기본출력값" />
  <br /> -
  <c:out value="<%=str2%>" default="기본출력값" />
  <br /> -
  <c:out value="${str3}" default="기본출력값" />
  <br />
  <%-- <c:remove var="str4" />
  - ${str3 }의 ${str4 } ... --%>
  <br /><br />
  
  <%
  String s = (String) pageContext.getAttribute("str3");
  
  %>
  <font color="red"> <b><%=s%></b>
  </font>
  <br />
  <%-- <font color="red"> <b><%=s1%></b>
  </font> --%>
  <c:out value="${sessionScope.str4}" />
  <c:out value="${str4}" />
  <%-- <font color="red"> <b>${sessionScope.str4}</b>
  </font>
  <font color="red"> <b>asdas24d</b>
  </font> --%>

</body>
</html>