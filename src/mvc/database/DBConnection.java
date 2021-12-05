package mvc.database;

import java.sql.*;
import java.sql.Connection;
import java.sql.SQLException;

public class DBConnection {
	//public static Connection getConnection() throws SQLException, ClassNotFoundException{
		
	public static Connection getConnection() {
	Connection conn = null;
	
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String user = "hr";
			String password = "hr";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection(url,user,password);
			
		}catch(ClassNotFoundException e) {
			System.out.println("예외 발생했습니다.");
			//e.printStackTrace();
		}catch(SQLException e) {
			System.out.println("예외 발생했습니다.");
			//e.printStackTrace();
		}catch(Exception e) {
			System.out.println("예외 발생했습니다.");
			//e.printStackTrace();
		}
		return conn;
	}
}
