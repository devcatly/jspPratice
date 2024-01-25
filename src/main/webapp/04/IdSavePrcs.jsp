<%@page import="javax.print.attribute.HashPrintRequestAttributeSet"%>
<%@page import="utils.CookieManager"%>
<%@page import="utils.JsFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
String uid = request.getParameter("uid");
String uPwd = request.getParameter("upwd");
String saveCheck = request.getParameter("saveCheck");

if("must".equals(uid)&&"1234".equals(uPwd)){
	if(saveCheck != null && saveCheck.equals("y")){
	CookieManager.makeCookie(response,"loginId",uid, 86400);
		
	}
	else{
		CookieManager.deleteCookie(response, "loginId");
	}
	
	JsFunction.alertLocation("로그인성공", "IdSaveMain.jsp",out);
}
else{
	JsFunction.alertBack("로그인실패", out);
}
%>
<title>Insert title here</title>
</head>
<body>

</body>
</html>