import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://shuttle.proxy.rlwy.net:39720/flip?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC",
                "root",
                "YOUR_PASSWORD"
            );

            System.out.println("MySQL DB connected successfully");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}