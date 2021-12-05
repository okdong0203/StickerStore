<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.*" %>
<%
   Connection conn = null;
    try{
    	String url="jdbc:oracle:thin:@localhost:1521:XE";
       String user = "hr";
       String pw = "hr";
       
       Class.forName("oracle.jdbc.driver.OracleDriver");
       
       conn = DriverManager.getConnection(url, user, pw);      
       
    }catch(ClassNotFoundException e){
       out.print("예외 발생 : " + e.getMessage());
       e.printStackTrace();
    }catch(SQLException e){
       out.print("데이터베이스 연결 실패 : " + e.getMessage());
       e.printStackTrace();
    }catch(Exception e){
       out.print("데이터베이스 연결 실패" + e.getMessage());
    }
%>