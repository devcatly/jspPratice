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
    <title>Title</title>
</head>
<body>
<h2>서보와 환경정보 읽기</h2>
<a href="./RequestWebInfo.jsp?eng=Hello&han=안녕">
    get방식 전송
</a>
<br/>
<form action="RequestWebInfo.jsp" method="post">
    영어 :  <input type="text" name="eng" value="Bye" /><br />
    한글: <input type="text" name="han" value="잘가" /> <br />
    <input type="submit" value="post 방식전ㅅ송">
</form>

<h2>매개변수 읽기</h2>
<form method="post" action="RequestParameter.jsp">
    아이디: <input type="text" name="id" value=""/><br />
    성별: <input type="radio" name="sex" value="남자" />남
    <input type="radio" name="sex" value="여자" />여자
<br />
    관심:
    <input type="checkbox" name="favo" value="eco"> 경제
    <input type="checkbox" name="favo" value="pol"> 정치
    <input type="checkbox" name="favo" value="ent"> 연예 <br />
    자기소개
    <textarea name="intro" cols="30" rows="4"></textarea>
    <br />
    <input type="submit" value="전송하기" />
</form>
<h2>3/ 헤더정보일기</h2>
<a href="RequestHeader.jsp">
    요청헤더정보읽기

</a>
<%
    data++;
%>
<%!
    int data = 10;
%>
<%
    data++;
%>
<%= data++ %>
<%
    out.print(new java.util.Date());
%>
</body>
</html>
