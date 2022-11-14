<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="myRegister" class="com.example.jsp_experiment.pojo.User" />
<jsp:setProperty name="myRegister" property="*" />
<body>
<h2>注册信息如下：</h2>
<hr>
<jsp:getProperty name="myRegister" property="username" /><br>
<jsp:getProperty name="myRegister" property="userpwd" /><br>
<jsp:getProperty name="myRegister" property="sex" /><br>
<jsp:getProperty name="myRegister" property="birthday" /><br>
<jsp:getProperty name="myRegister" property="mail" /><br>
<jsp:getProperty name="myRegister" property="work" /><br>
<jsp:getProperty name="myRegister" property="like" /><br>
<jsp:getProperty name="myRegister" property="intro" /><br>
<%--<%--%>
<%--    response.setHeader("Refresh", "5;url=login.jsp");--%>
<%--%>--%>
</body>