package com.example.quirk.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection getConnectionToDatabase(){
        Connection conn = null;
        try{
            // load the driver class
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("MySQL JDBC Driver Registered!");

            // get hold of the DriverManager
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quirk","root","");
        } catch(ClassNotFoundException e){
            System.out.println("MySQL driver not found!");
            e.printStackTrace();
        } catch(SQLException e){
            System.out.println("Connection failed!");
            e.printStackTrace();
        }

        if(conn!=null){
            System.out.println("Connection made to DB!");
        }
        return conn;
    }
}
