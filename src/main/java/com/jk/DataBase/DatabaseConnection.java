package com.jk.DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String connectionURL = "jdbc:mysql://localhost:3306/logreg_db";
    private static final String username = "root";
    private static final String password = "root";
    public static Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                connection= DriverManager.getConnection(connectionURL,username,password);
                System.out.println("Connection : "+!connection.isClosed());
            } catch (SQLException e) {
                e.printStackTrace();
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;


    }




}