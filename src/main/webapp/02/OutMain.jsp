<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-11-05
  Time: 오후 4:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    out.print("출력되지 않는 텍스트");
    out.clearBuffer();

    out.print("<h2>out 내장객체</h2>");

    out.print("출력버퍼의 크기:" +out.getBufferSize()+ "<br>");
    out.print("남은버퍼의 크기" +out.getRemaining()+ "<br>");

    out.flush();
    out.print("flush 후 버퍼의 크기 :" + out.getRemaining() +"<br>");

    out.print(1);
    out.print(false);
    out.print('가');
%>
</body>
</html>
