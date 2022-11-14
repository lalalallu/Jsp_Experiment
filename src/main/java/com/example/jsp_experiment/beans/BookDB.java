package com.example.jsp_experiment.beans;

import com.example.jsp_experiment.pojo.Book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;
import java.util.HashMap;
import com.example.jsp_experiment.util.DBConn;
import com.example.jsp_experiment.pojo.Book;

/**
 * @author lalalallu
 */
public class BookDB extends DBConn{
    public HashMap<String,Book> selectBook() {
        HashMap<String,Book> books=new HashMap<String,Book>();
        if (conn!=null) {
            try {
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from book");
                while(rs.next()) {
                    Book book=new Book();
                    book.setBookNo(rs.getString("bookNo").trim());
                    book.setBookCover(rs.getString("bookCover"));
                    book.setBookName(rs.getString("bookName"));
                    book.setNowPrice(rs.getFloat("nowPrice"));
                    book.setOrgPrice(rs.getFloat("orgPrice"));
                    book.setComments(rs.getInt("comments"));
                    book.setAuthor(rs.getString("author"));
                    book.setPressDate(rs.getString("pressDate"));
                    book.setPress(rs.getString("press"));
                    book.setBookNum(rs.getInt("bookNum"));
                    books.put(book.getBookNo(),book);
                }
                rs.close();
            }
            catch(SQLException ex) {
                System.err.println(ex.getMessage());
            }
        }
        return books;
    }
    public int addBook(Book book) {
        int result = 0;
        if (conn!=null) {
            try {
                PreparedStatement pst = conn.prepareStatement("insert into book values(?,?,?,?,?,?,?,?,?,?)");
                pst.setString(1, book.getBookNo());
                pst.setString(2, book.getBookCover());
                pst.setString(3, book.getBookName());
                pst.setFloat(4, book.getNowPrice());
                pst.setFloat(5, book.getOrgPrice());
                pst.setInt(6, book.getComments());
                pst.setString(7, book.getAuthor());
                pst.setString(8, book.getPress());
                pst.setString(9, book.getPressDate());
                pst.setInt(10, book.getBookNum());
                result = pst.executeUpdate();
            }
            catch(SQLException ex) {
                System.err.println(ex.getMessage());
            }
        }
        return result;
    }
}

