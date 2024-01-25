<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-12-01
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<String> lists = new ArrayList<String>();
    lists.add("리스트");
    listss.add("컬렉션");
    session.setAttribute("lists", lists);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>페이지 이동후 세션 영역속성읽기 </h2>
<a href="SessionLocation.jsp">바로가기</a>
</body>
</html>
