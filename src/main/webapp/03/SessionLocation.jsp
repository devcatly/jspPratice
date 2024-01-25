<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-12-01
  Time: 오후 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>페이지영역 이동 후ㅡ 읽기</h2>
<%
    ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
    for(String str : lists){
        out.print(str+"<br/>");
    }
%>
</body>
</html>
