<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String studyArr[] = { "Java", "JSP", "Android", "Spring" };
pageContext.setAttribute("study", studyArr);
%>
<%
ArrayList<String> familyList = new ArrayList<String>();
String nameArr[] = { "simba", "rorod", "tina", "poli" };
for (int i = 0; i < nameArr.length; i++) {
	familyList.add(nameArr[i]);
}
pageContext.setAttribute("Family", familyList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>EL의 Array1</h2>
  <b>Java Program 과목</b>
  <hr width="150" align="left" />

  0. ${study }
  <br /> 1. ${study[0] }
  <br /> 2. ${study[1] }
  <br /> 3. ${study[2] }
  <br /> 4. ${study[3] }
  <br />

  <h2>EL의 Array2</h2>
  <b>Family List</b>
  <hr width="150" align="left" />
  1. ${Family[0]}
  <br /> 2. ${Family[1]}
  <br /> 3. ${Family[2]}
  <br /> 4. ${Family[3]}
  <br />

</body>
</html>