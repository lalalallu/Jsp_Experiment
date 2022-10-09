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
<div><%=(String)session.getAttribute("username")%></div> <br>
<div><%=(String)session.getAttribute("password")%></div> <br>
</body>
</html>
