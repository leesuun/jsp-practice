<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/DeveloperTag.tld"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>1부터 n까지 더하기</h1>
  <form action="developerTag.jsp">
    <input type="number" name="num" />
    <input type="submit" value="계산" />
  </form>
  <c:if test='${param.num != null}'>
    <font color="blue"> <tag:addSum>${param.num}</tag:addSum>
    </font>
  </c:if>

</body>
</html>

