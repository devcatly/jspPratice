<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-10-21
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
errorPage="ErrorPagre.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>오류발생</h2>
<p>
  오류명: <%= exception.getClass().getName()%> <br />
  오류 메세지: <%= exception.getMessage() %>
</p>
</body>
</html>
