<%--
  Created by IntelliJ IDEA.
  User: lalalallu
  Date: 2022/10/9
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<% request.setCharacterEncoding("UTF-8");
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  session.setAttribute("username",username);
  if(username.equals("HoYiee") && password.equals("123") )
  {
    session.setAttribute("isLogin", "true");
    response.sendRedirect("success.jsp");
  }
  else
  { session.setAttribute("isLogin", "false");
    response.sendRedirect("error.jsp");
  }
%>
