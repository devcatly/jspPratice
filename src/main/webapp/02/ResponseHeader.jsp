<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-11-04
  Time: 오후 3:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    long add_date = s.parse(request.getParameter("add_date")).getTime();
    int add_int = Integer.parseInt(request.getParameter("add_int"));
    String add_str = request.getParameter("add_str");


    response.addDateHeader("myBirthDay", add_date);
    response.addIntHeader("myNumber", add_int);
    response.addIntHeader("myNumber", 1004);
    response.addIntHeader("myNumber", 11114);
    response.addHeader("myName", add_str);
    response.setHeader("myName", "김김김");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>응답 헤더 정보 출력</h2>
<%
    Collection<String> headerNames = response.getHeaderNames();
    for(String hName : headerNames){
        String hValues = response.getHeader(hName);
%>
    <li><%= hName%> : <%= hValues %></li>
    <li><%= hName%> : <%= hValues %></li>
<%
    }
%>
<h2  >myNum값만 출력</h2>
<%
    Collection<String> myNumber = response.getHeaders("MyNumber");
    for (String myNum : myNumber){
%>
<li> myNumer : <%= myNum %></li>
<%
    }
%>
</body>
</html>
