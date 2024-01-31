<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border="1" width="90%"> 
    <tr>
        <td align="center">
        <!-- 로그인 여부에 따른 메뉴 변화 -->
        <% if (session.getAttribute("UserId") == null) { %>
            <a href="../15/LoginForm.jsp">로그인</a>
            <a href="../memberjoin/join.jsp">회원가입</a>
            <% } else { %>
            <a href="../06/Logout.jsp">로그아웃</a>
        <% } %>
            <!-- 8장과 9장의 회원제 게시판 프로젝트에서 사용할 링크 -->
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="../09PagingBoard/List.jsp">게시판</a>
        </td>
    </tr>
</table>