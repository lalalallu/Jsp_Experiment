package com.example.jsp_experiment.util;

/**
 * @author HoYiee
 */
import java.sql.*;

public class DBConn {
    private String dbDriver ="com.mysql.cj.jdbc.Driver";
    private String connStr ="jdbc:mysql://localhost:3306/booklib?useSSL=false&serverTimezone=UTC";
    private String username="root";
    private String password="TY1472583690";
    protected Connection conn = null;
    public DBConn() {
        Connection con = null;
        try {
            Class.forName(dbDriver);
            con = DriverManager.getConnection(connStr,username,password);
        }
        catch(java.lang.ClassNotFoundException e) {
            System.err.println( e.getMessage());
        }
        catch(SQLException e) {
            System.err.println( e.getMessage());
        }
        this.conn=con;
    }
    public void close(){
        try{
            if (conn!=null)
            {
                conn.close();
            }
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
