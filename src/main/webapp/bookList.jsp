<%--
  Created by IntelliJ IDEA.
  User: Hasee
  Date: 2022/10/9
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" %>
<%@ page import = "java.util.*, com.example.jsp_experiment.pojo.Book" %>
<jsp:useBean id="bookDB" class="com.example.jsp_experiment.beans.BookDB" />
<%
//    HashMap<String, Book> books = (HashMap<String, Book>) session.getAttribute("books");
    HashMap<String, Book> books = bookDB.selectBook();
    session.setAttribute("books", books);
%>
<head>
    <title>叮当</title>
    <link type = "text/css" href = "css/bookList.css" rel = "stylesheet"/>
</head>
<body>
<%
    if (books == null || books.size() == 0) {
%>
<div>
    无商品！
</div>
<% } else { %>
<div>
    <ul>
        <%
            Book book;
            for (HashMap.Entry<String, Book> entry : books.entrySet()) {
                book = (Book) entry.getValue();
        %>
        <li><a class = "pic" href = "" target = "_blank">
            <img src = 'images/<%=book.getBookCover()%>'/>
        </a>
            <div class = "desc">
                <p>
                    <a href = "" target = "_blank"><%=book.getBookName()%>
                    </a>
                </p>
                <p>
                    <span>现价&yen;<%=book.getNowPrice()%></span>
                    <span class = "price">&nbsp;&nbsp;定价
 <span>&yen;<%=book.getOrgPrice()%></span>
 </span>
                </p>
                <p>
                    <span class = "star"></span>
                    <a href = "" target = "_blank"><%=book.getComments()%>
                        条评论</a>
                </p>
                <p>
 <span>
 <a href = ""><%=book.getAuthor()%></a>&nbsp;著
 </span>
                    <span> /<%=book.getPressDate()%></span>
                    <span>
 /<a href = ""><%=book.getPress()%></a>
 </span>
                </p>
                <p class = "detail"></p>
                <div>
                    <p>
                        <a class = "bn" href = "doCar.jsp?action=buy&bookNo=<%=entry.getKey()%>">加入购物车</a>
                        <a class = "bn" href = "">收藏</a>
                    </p>
                </div>
            </div>
        </li>
        <%
            }
        %>
    </ul>
    <div class = "bncar">
        <a class = "bn" href = 'showCar.jsp'>查看购物车</a>
    </div>
</div>
<%
    }
%>
</body>