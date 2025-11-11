package com.grocery.dao;
import java.sql.*;

public class DBUtil {
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/grocerystore",
                        "root", "asmita");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return connection;
    }
}
