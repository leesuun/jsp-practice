<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/DeveloperTag.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>BMI 계산기</h1>
  <hr />
  <form action="viewBMI.jsp">
    이름
    <input type="text" name="name" />
    <br /> 키
    <input type="number" step="0.1" name="height" />
    <br /> 몸무게
    <input type="number" step="0.1" name="weight" />
    <br />
    <input type="submit" value="계산" />
  </form>
  <br />
  <br />

  <c:choose>
    <c:when test='${param.height == "" && param.weight == "" && param.name == ""}'>
      오늘은 <b><tf:now/></b>입니다.
    </c:when>
    <c:when test='${(param.height != null) && (param.weight != null)}'>
      성명 : ${param.name} <br />
    키 : ${param.height } <br />
    몸무게 : ${param.weight } <br />
      <font color="blue"> <tag:bmi height="${param.height }"
          weight="${param.weight }"
        />
      </font>
    </c:when>
  </c:choose>

</body>
</html>