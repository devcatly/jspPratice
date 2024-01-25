<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-11-19
  Time: 오후 4:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>web.xml에 설정한 내용 읽어오기</h2>
초기화 매개변수 : <%= application.getInitParameter("INII_PARMA") %>

<h2>서버의 물리적 경로 얻어오기</h2>
application 내장객체 : <%= application.getRealPath("/02") %>

<h2>선언부에서 application 내장객체 사용하기</h2>
<%!
  public String useImplicitObject(){
    return this.getServletContext().getRealPath("/02");
  }
  public String useImplicitObject(ServletContext app){
    return app.getRealPath("/02");
  }
%>
<ul>
  <li>this 사용 : <%= useImplicitObject() %></li>
  <li>내장객체를 인수로 전달: <%=  useImplicitObject(application) %></li>
</ul>
</body>
</html>
