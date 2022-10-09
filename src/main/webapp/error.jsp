<%--
  Created by IntelliJ IDEA.
  User: Hasee
  Date: 2022/10/9
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
    <title>error</title>
    <meta http-equiv="refresh" content="10; url=login.jsp">
</head>
<body>
<div>sorry
    <%=(String)session.getAttribute("username")%>
</div>
pls try again!
</body>
</html>