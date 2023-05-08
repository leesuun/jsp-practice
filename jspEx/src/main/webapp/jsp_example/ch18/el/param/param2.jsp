<%@ page contentType="text/html; charset=UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>Expression Language</title>
</head>
<body>
  <h2>EL의 param2</h2>
  name : ${param['name']}
  <%-- <br /> hobby : ${paramValues.hobby[0]}&nbsp; ${paramValues.hobby[1]}&nbsp;
  ${paramValues.hobby[2]}&nbsp; ${paramValues.hobby[3]}&nbsp; ${paramValues.hobby[4]} --%>
  <br /> hobby :
  ${paramValues.hobby[0].equals("독서") ? "독서 취미 O" : "독서 취미 X"}
  <br />
  ${ 1 lt 1}

</body>
</html>