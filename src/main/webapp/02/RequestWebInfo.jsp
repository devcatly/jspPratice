<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-10-22
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체</title>
</head>
<body>
<h2>클라이언트와 서버환경정보 읽기</h2>
<ul>
    <li>데이터 전송방식 : <%= request.getMethod() %></li>
    <li> URL : <%= request.getRequestURL() %></li>
    <li> URI : <%= request.getRequestURI() %></li>
    <li> 프로토콜 : <%= request.getProtocol() %></li>
    <li> 서버명 : <%= request.getServerName() %></li>
    <li> 서버표트: <%= request.getServerPort() %></li>
    <li> 클라이언트 ip주소: <%= request.getRemoteAddr() %></li>
    <li> 쿼리스트링: <%= request.getQueryString() %></li>
    <li> 전송된 값: <%= request.getParameter("eng") %></li>
    <li> 전송된 값: <%= request.getParameter("han") %></li>
</ul>
</body>
</html>
