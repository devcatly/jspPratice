<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-11-03
  Time: 오후 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체</title>
</head>
<body>
<h2>로그인 폼</h2>
<%
String loginErr = request.getParameter("loginErr");
if(loginErr != null) out.print("로그인 실패");
%>
<form action="./ResponseLogin.jsp" method="post">
아이디 : <input type="text" name="user_id" /><br />
패스워드 : <input type="text" name="user_pwd" /><br />
    <input type="submit" value="로그인" />
</form>

<h2>2.http응답 헤더 설정하기</h2>
<form action="./ResponseHeader.jsp" method="get">
    날짜형식: <input type="text" name="add_date" value="2021-10-25 09:00" /><br/>
    숫자형식: <input type="text" name="add_int" value="8282" /><br/>
    문자형식: <input type="text" name="add_str" value="가나다" /><br/>
    <input type="submit" value="응답 헤더 설정" />

">
</form>
</body>
</html>
