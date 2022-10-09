<%--
  Created by IntelliJ IDEA.
  User: Hasee
  Date: 2022/10/9
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
    <title>Login Successed!</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    session.setAttribute("username",username);
    session.setAttribute("password",password);
    response.sendRedirect("check.jsp");
%>
</body>
</html>