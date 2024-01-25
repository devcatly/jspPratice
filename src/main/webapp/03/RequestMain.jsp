<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-11-29
  Time: 오후 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="common.Person" %>
<%
  request.setAttribute("requestString","requset 영역의 문자열");
  request.setAttribute("requestPerson",new Person("ds",32));
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.removeAttribute("requestString");
  request.removeAttribute("requestInteger");
%>

<h2>requset 영역의 속성값 읽기</h2>
<%
  Person rPerson = (Person)(request.getAttribute("requestPerson"));
%>
<ul>
  <li> String 객체: <%= request.getAttribute("requestString") %></li>
  <li> Person 객체: <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
</ul>

<h2> 포위드 된 페이지에서 requset 영역 속성값 일릭기</h2>
<%--<%
  request.getRequestDispatcher(
          "RequestForward.jsp?paramHan=한글&paramEng=English")
          .forward(request, response);
%>--%>
</body>
</html>
