<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String loginId = CookieManager.readCookie(request,"loginId"); 

String cookiecheck = "";
if(!loginId.equals("")){
	cookiecheck = "checked";
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>아아디저장</title>
</head>
<body>
<h2>로그인페이지</h2>
<form action="IdSavePrcs.jsp" method = "post">
아이디: <input type="text" name="uid" value="<%= loginId %>" />
<input type="checkbox" name="saveCheck" value="y"  <%= cookiecheck %> />
아이디 기억하기 
<br />
패스워드 : <input type="text" name="upwd" />
<br />
<input type="submit" value="로그인하기">
</form>
</body>
</html>