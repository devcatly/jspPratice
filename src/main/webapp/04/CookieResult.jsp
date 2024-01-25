<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-12-02
  Time: 오후 8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>쿠키값 확인</h2>
<%
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        for(int i=0; i< cookies.length; i++){
            String cookieNmae = cookies[i].getName();
            String cookieValue = cookies[i].getValue();
            out.print(String.format("쿠키명: %s - 쿠키값: %s<br/>",cookieNmae,cookieValue));
        }
    }
%>
</body>
</html>
