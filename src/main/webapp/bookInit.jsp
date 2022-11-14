<%--
  Created by IntelliJ IDEA.
  User: Hasee
  Date: 2022/10/9
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*, com.example.jsp_experiment.pojo.Book " %>
<% HashMap<String,Book> books=new HashMap<>();

    String[] bookNos={"1001","1002","1003","1004"};
    String[] bookCovers={"../images/book01.jpg","../images/book02.jpg","../images/book03.jpg","../images/book04.jpg"};
    String[] bookNames={"b1","b2","b3","b4"};
    float[] nowPrices={99,89,79,90};
    float[] orgPrices={102,100,103,233};
    int[] comments={5,6,4,5};
    String[] authors={"a1","a2","a3","a4"};
    String[] pressDates={"1999","1998","1993","1234"};
    String[] presses={"p1","p2","p3","p4"};
    int[] bookNums={4,5,6,7};
    for(int i=0;i<4;i++)
    {
    Book book=new Book();
    book.setBookNo(bookNos[i]);
    book.setBookCover(bookCovers[i]);
    book.setBookName(bookNames[i]);
    book.setNowPrice(nowPrices[i]);
    book.setOrgPrice(orgPrices[i]);
    book.setComments(comments[i]);
    book.setAuthor(authors[i]);
    book.setPressDate(pressDates[i]);
    book.setPress(presses[i]);
    book.setBookNum(bookNums[i]);
    books.put(bookNos[i],book);
    }
    session.setAttribute("books",books);
    response.sendRedirect("bookList.jsp");
%>
