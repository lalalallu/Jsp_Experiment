<%--
  Created by IntelliJ IDEA.
  User: lalalallu
  Date: 2022/10/9
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  session.setAttribute("username", username);
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306 /booklib?useSSL=false&serverTimezone=UTC","root","TY1472583690");
  String sql = "select * from user where username=? and userpwd=?";
  PreparedStatement pstmt = con.prepareStatement(sql);
  pstmt.setString(1, username);
  pstmt.setString(2, password);
  ResultSet rs = pstmt.executeQuery();
  boolean success=false;
  if (rs.next()) {
    success = true;
  }
  rs.close();
  pstmt.close();
  con.close();
  if (success) {
    response.sendRedirect("success.jsp");
  } else {
    response.sendRedirect("error.jsp");
  }
%>

