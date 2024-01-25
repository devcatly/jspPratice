<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-10-28
  Time: 오후 1:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>요청헤더정보출력</h2>
<%
    Enumeration haaders = request.getHeaderNames();
    while (haaders.hasMoreElements()){
        String headerName =(String) haaders.nextElement();
        String headerValue =request.getHeader(headerName);
        out.print("헤더명:"+headerName+"헤더값"+headerValue+"<br />");
        out.print("헤더명:"+headerName+"헤더값"+headerValue+"<br />");
    }
%>
<p>파일을 직접 실행하면 refer정보는 출력불가</p>
</body>
</html>
