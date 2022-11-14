<%--
  Created by IntelliJ IDEA.
  User: Hasee
  Date: 2022/10/9
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
    <title>check</title>
</head>
<body>
<div><%="用户名："+(String)session.getAttribute("username")%></div>
<div><%="密  码："+(String)session.getAttribute("password")%></div>
<div><%="性  别："+(String)session.getAttribute("sex")%></div>
<div><%="生  日："+(String)session.getAttribute("birthday")%></div>
<div><%="邮  箱："+(String)session.getAttribute("mail")%></div>
<div><%="地  址："+(String)session.getAttribute("city")%></div>
<div><%="爱  好："+(String)session.getAttribute("strLikes")%></div>
<div><%="个  签："+(String)session.getAttribute("intro")%></div>
<%
    response.setHeader("Refresh", "5;url=login.jsp");
%>
</body>
</html>
