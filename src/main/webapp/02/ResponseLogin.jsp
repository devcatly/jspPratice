<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-11-03
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체 - response</title>
</head>
<body>
<%
    String id = request.getParameter("user_id");
    String pwd = request.getParameter("user_pwd");
    if(id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")){
        response.sendRedirect("ResponseWelcome.jsp");
    }else {
        request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
                .forward(request, response);
    }
%>
</body>
</html>
