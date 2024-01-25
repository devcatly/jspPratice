<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-11-29
  Time: 오후 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="common.Person" %>
<h4> include 페이지</h4>
<%
    int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
  //  String pString2 = pageContext.getAttribute("pagePerson").toString();
    Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
    <li>Integer 객체 : <%= pInteger2 %></li>
    <li>String 객체 : <%= pageContext.getAttribute("pageString") %></li>
    <li>Person 객체 : <%= pPerson2.getName() %>, <%= pPerson2.getAge() %> </li>
</ul>