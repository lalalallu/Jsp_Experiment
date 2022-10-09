<%--
  Created by IntelliJ IDEA.
  User: lalalallu
  Date: 2022/10/9
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
  <title>Login Successed!</title>
</head>
<body>
<div>welcome
  <%=(String)session.getAttribute("username")%>
</div>
to use!<br>
</body>
</html>
