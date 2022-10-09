<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8">
    <title>登录</title>
    <link type="text/css" href="css/login.css" rel="stylesheet"/>
</head>
<body>
<div class="login">
    <h2>用户登录</h2>
    <div class="content">
        <form action="doLogin.jsp" method="post">
            <div class="frm">用户名：<input type="text" name="username" class="txtuser" /></div>
            <div class="frm">密 码：<input type="password" name="password" class="txtpwd" /></div>
            <div class="btns">
                <input type="submit" name="login" class="btnlogin" value="" />
                <input type="button" name="register" class="btnregister" onclick="window.open('register.html')"/>
            </div>
        </form>
    </div>
</div>
</body>
</html>