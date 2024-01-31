<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-01-29
  Time: 오후 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
<jsp:include page="../Common/Link.jsp" />
<h2>회원가입</h2>

<form action="join_ok.jsp" method="post">
    아이디:<input type="text" name="id"><br/>
    비밀번호:<input type="password" name="pw"><br/>
    이름:<input type="text" name="name"><br/>
    전화번호:
    <select name="phon1">
        <option>010</option>
        <option>02</option>
        <option>031</option>
        <option>051</option>
    </select>
    - <input type="text" name="phone2" size="5">
    - <input type="text" name="phone3" size="5">

    <br/>
    <input type="radio" name="gender" value="m" checked>남자
    <input type="radio" name="gender" value="f">여자

    <input type="submit" value="가입">

</form>

</body>