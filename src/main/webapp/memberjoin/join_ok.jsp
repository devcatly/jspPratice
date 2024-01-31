<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="common.JDBConnect" %>
<%@ page import="common.Member" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="utils.JsFunction" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");;
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");

    JDBConnect jdbc = new JDBConnect();

    try{

        Member mb = new Member();
          mb.setName(name);
          mb.setPaass(pw);
          mb.setId(id);

        String sql = "insert into member values(?, ?, ?, sysdate)";
        PreparedStatement psmt = jdbc.con.prepareStatement(sql);
        psmt.setString(1, mb.getId());
        psmt.setString(2, mb.getPaass());
        psmt.setString(3, mb.getName());

        int result = psmt.executeUpdate();

        if(result == 1){ // 성공
            response.sendRedirect("join_succes.jsp");
        } else{ // 실패
            JsFunction.alertBack("회원가입에 실패하였습니다.", out);
        }

        jdbc.close();

    } catch(Exception e){
        e.printStackTrace();
    }
%>