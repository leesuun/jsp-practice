<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title>Expression Language</title>
</head>
<body>
<h2>EL의 Scope2</h2>
id(sessionScope로 받은값) :  <b>${sessionScope.id}</b><p/>
siteName(applicationScope로 받은값) : <b>${applicationScope.siteName}</b><p/>
<p>${ 1> 2 ? '1은 2보다 크다' : '1은 2보다 작다'}</p>
</body>
</html>