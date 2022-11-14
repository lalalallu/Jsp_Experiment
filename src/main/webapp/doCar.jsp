<%--
  Created by IntelliJ IDEA.
  User: Hasee
  Date: 2022/10/18
  Time: 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.example.jsp_experiment.pojo.Book"%>
<%
  request.setCharacterEncoding("UTF-8");
  HashMap<String, Book> bookCar = (HashMap<String, Book>) session.getAttribute("bookCar");
  if (bookCar == null) {
    bookCar = new HashMap<String, Book>();
  }
  HashMap<String, Book> books = (HashMap<String, Book>) session.getAttribute("books");
  String action = request.getParameter("action");
  if (action == null)
    action = "";
  if (action.equals("buy")) {
    String bookNo = request.getParameter("bookNo");
    Book temp = (Book) bookCar.get(bookNo);
    if (temp == null) {

      temp = (Book) books.get(bookNo);
      temp.setBuyNum(1);
      bookCar.put(bookNo, temp);
    }
    else
    {
      temp.setBuyNum(temp.getBuyNum() + 1);
      bookCar.put(bookNo, temp);
    }
    session.setAttribute("bookCar", bookCar);
    response.sendRedirect("bookList.jsp");
  } else if (action.equals("removeone")) {
    String bookNo = request.getParameter("bookNo");
    bookCar.remove(bookNo);
    session.setAttribute("bookCar", bookCar);
    response.sendRedirect("showCar.jsp");
  }else if (action.equals("ᢩ批量删除")) {
    String[] bookNos = request.getParameterValues("carCheckBox");
    //……
    response.sendRedirect("showCar.jsp");
  }else{
    response.sendRedirect("showCar.jsp");
  }
%>
