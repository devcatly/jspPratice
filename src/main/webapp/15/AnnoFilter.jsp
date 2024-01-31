<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-01-30
  Time: 오후 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>web.xml에서 매핑</h2>
<form>
    <select name="searchFiled">
        <option value="title">제목</option>
        <option value="content">내용</option>
    </select>
    <input type="text" name="searchWord" value="어너토에시면" />
    <input type="submit" value="검색하기" />
</form>
</body>
</html>
