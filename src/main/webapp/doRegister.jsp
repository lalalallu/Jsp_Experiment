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
    <title>check</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("userpwd");
    String sex = request.getParameter("sex");
    String birthday = request.getParameter("birthday");
    String mail = request.getParameter("mail");
    String province = request.getParameter("selProvince");
    String city = request.getParameter("selCity");
    String work = request.getParameter("work");

    String[] strLike = request.getParameterValues("like");
    String strLikes = "";
    if (strLike!=null) {
        for(int i=0;i<strLike.length;i++ ){
            strLikes = strLikes+",'"+ strLike[i] +"'";
        }
    }
    if(!strLikes.equals("")) {
        strLikes = strLikes.substring(1,strLikes.trim().length());
    }

    String intro = request.getParameter("intro");

    session.setAttribute("username",username);
    session.setAttribute("password",password);
    session.setAttribute("sex",sex);
    session.setAttribute("birthday",birthday);
    session.setAttribute("mail",mail);
    session.setAttribute("city",province+city);
    session.setAttribute("work",work);
    session.setAttribute("strLikes",strLikes);
    session.setAttribute("intro",intro);

    response.sendRedirect("check.jsp");
%>
</body>
</html>