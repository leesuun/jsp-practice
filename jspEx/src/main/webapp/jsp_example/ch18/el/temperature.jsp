<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="ch18.Temperature"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h1>프로그램 정보: ${Temperature.getProgramName() }</h1>
  <form action="temperature.jsp">
    섭씨 :
    <input type="text" size=2 name="temp" value="${param.temp}" />
    °C
    <input type="submit" value="환산" />
    화씨 :
    <input type="text" size=2  value="${Temperature.convertToFahrenheit(param.temp) }" disabled="disabled" />
    ℉
  </form>

</body>
</html>