<%@page import="com.sticker.dao.MemberDAO"%>
<%@page import="com.sticker.dao.DBConnecter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    %>
    <%
    	response.setContentType("text/html; utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>

<%
	MemberDAO mj = new MemberDAO();


		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		int year = Integer.parseInt(request.getParameter("year"));
		String address = request.getParameter("address");
		int phoneNum = Integer.parseInt(request.getParameter("phoneNum"));
		String email = request.getParameter("email");
		String email2 = request.getParameter("email2");
		
		Connection conn = null;
		PreparedStatement pstm = null;
		
		try{
	String sql = "INSERT INTO MEMBER_TBL(ID, PASSWORD, NAME, GENDER, YEAR, ADDRESS, PHONENUM, EMAIL,EMAIL2)" 
				+ "VALUES(?,?,?,?,?,?,?,?,?)";
	
		conn = DBConnecter.getConnection();
		pstm = conn.prepareStatement(sql);
		pstm.setString(1, id);
		pstm.setString(2, password);
		pstm.setString(3, name);
		pstm.setString(4, gender);
		pstm.setInt(5, year);
		pstm.setString(6, address);
		pstm.setInt(7, phoneNum);
		pstm.setString(8, email);
		pstm.setString(9, email2);
	
		pstm.executeUpdate();
		response.sendRedirect("login.jsp");
		}catch(SQLException e) {
	out.print("요청하신 페이지를 찾을수 없습니다.");
		}finally{
		try{
		if(pstm != null) pstm.close();
		if(conn != null) conn.close();
		}catch(SQLException e){
	out.print("요청하신 페이지를 찾을수 없습니다.");
		}
		      }
%>



</body>
</html>