<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-11-24
  Time: 오후 3:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체 excpetion</title>
</head>
<body>
<%
    int status = response.getStatus();

    if(status == 404){
        out.print("404에러 발생");
        out.print("<br/>파일 경로 확인");
    } else if (status == 405) {
        out.print("405에러 발생");
        out.print("<br/> 요청방식 확인");
    } else if (status == 500) {
        out.print("505에러 발생");
        out.print("<br/> 요청방식 확인");
    }
%>

</body>
</html>
