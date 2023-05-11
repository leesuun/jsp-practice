<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/DeveloperTag.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    키
    <input  type="text" name="height" />
    <br /> 몸무게
    <input type="text" name="weight" />
    <br />
    <input type="submit" value="계산" />
  </form>
  <c:if test='${(param.height != null) && (param.weight != null)}'>
    <font color="blue"> <tag:bmi height="${param.height }"
        weight="${param.weight }"
      />
    </font>
  </c:if>
</body>
</html>