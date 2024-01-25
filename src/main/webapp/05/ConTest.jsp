<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="common.JDBConnect"%>
<%@ page import="common.DBConnPool"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
JDBConnect jdbc1 = new JDBConnect();

String driver = application.getInitParameter("OracleDriver");
String url = application.getInitParameter("OracleURL");
String id = application.getInitParameter("OracleId");
String pwd = application.getInitParameter("OraclePwd");

JDBConnect jdbc2 = new JDBConnect(driver,url, id, pwd);

JDBConnect jdbc3 = new JDBConnect(application);

DBConnPool pool = new DBConnPool();
pool.close();

jdbc1.close();
jdbc2.close();
jdbc3.close();


%>
</body>
</html>