package dbutil;
import java.sql.*;
public class DBUtil {

	
	public static Connection getConnection() {
// 	intially connection is null
		Connection conn = null;
//		get the class
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/ProjectDB", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return conn;
		
	}
	
	public static void closeConnection(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
