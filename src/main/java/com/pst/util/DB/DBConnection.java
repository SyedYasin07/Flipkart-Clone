package com.pst.util.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
            	    "jdbc:mysql://shuttle.proxy.rlwy.net:39720/flip?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC",
            	    "root",
            	    "awsYxCKkaHAtWDUAftCnfuxWTpnXFruL"
            	);

            System.out.println("✅ MySQL DB connected successfully");

        } catch (ClassNotFoundException e) {
            System.err.println("❌ MySQL JDBC Driver not found");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("❌ Failed to connect to MySQL database");
            e.printStackTrace();
        }
        return con;
    }
}
