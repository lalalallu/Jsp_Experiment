<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.jspsmart.upload.*,com.example.jsp_experiment.pojo.*"%>
<%
  request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bookDB" class="com.example.jsp_experiment.beans.BookDB" />
<%
  try{
    SmartUpload upload = new SmartUpload();
    upload.initialize(pageContext);
    upload.setCharset("utf-8");
    upload.setAllowedFilesList("jpg,jpeg,bmp,png");
    upload.upload();
    upload.save("images");

    String bookNo = upload.getRequest().getParameter("bookNo");
    String bookName = upload.getRequest().getParameter("bookName");
    String author = upload.getRequest().getParameter("author");
    String press = upload.getRequest().getParameter("press");
    String pressDate = upload.getRequest().getParameter("pressDate");
    String bookNum = upload.getRequest().getParameter("bookNum");
    String orgPrice = upload.getRequest().getParameter("orgPrice");
    String nowPrice = upload.getRequest().getParameter("nowPrice");
    File file = upload.getFiles().getFile(0);
    String bookCover=file.getFileName();
    Book book = new Book();
    book.setBookNo(bookNo);
    book.setBookName(bookName);
    book.setAuthor(author);
    book.setPress(press);
    book.setPressDate(pressDate);
    book.setBookNum(Integer.parseInt(bookNum));
    book.setOrgPrice(Float.parseFloat(orgPrice));
    book.setNowPrice(Float.parseFloat(nowPrice));
    book.setBookCover(bookCover);
    HashMap<String, Book> books = (HashMap<String, Book>)session.getAttribute("books");
    if (books==null)
      books = new HashMap<String, Book>();
    books.put(book.getBookNo(), book);
    session.setAttribute("books",books);
    int result = bookDB.addBook(book);
    if (result == 1) {
      response.sendRedirect("bookList.jsp");
    } else {
      out.println("<script>alert('输入信息有误，请再次确认！');history.go(- 1);</script>");
    }
  }
  catch (Exception e) {
    out.println(e.getMessage());
  }
%>