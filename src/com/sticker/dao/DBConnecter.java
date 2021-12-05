package com.sticker.dao;
import java.sql.*;


public class DBConnecter {
	public static Connection getConnection() {
	Connection conn = null;
	
	try {
		String url="jdbc:oracle:thin:@localhost:1521:XE";
	    String user = "hr";
	    String pw = "hr";
		
	    Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,user,pw);
	} catch (ClassNotFoundException e) {
		System.out.println("oracle 드라이버 로딩 실패");
	} catch (SQLException e) {
		System.out.println("DB접속 실패");
	} catch (Exception e) {
		System.out.println("요청하신 페이지를 찾을수 없습니다.");
	}
	return conn;
	}
}
