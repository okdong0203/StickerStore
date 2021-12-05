S<%@page import="com.sticker.dao.DBConnecter"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sticker.dto.MemberDTO"%>
<jsp:useBean id="mj" class="com.sticker.dao.MemberDAO"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% 
    String id = (String) session.getAttribute("loginId"); 
    if(id == null) response.sendRedirect("login.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");

	String password = request.getParameter("password");
	String address = request.getParameter("address");
	int phoneNum = Integer.parseInt(request.getParameter("phoneNum"));
	String email = request.getParameter("email");
	String email2 = request.getParameter("email2");
	%>

	<%
	
	Connection conn = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;
	int check = 0;
	String sql = "UPDATE MEMBER_TBL SET PASSWORD=?, ADDRESS=?, PHONENUM=?, EMAIL=?, EMAIL2=? WHERE ID=?";

	conn = DBConnecter.getConnection();
	pstm = conn.prepareStatement(sql);
	pstm.setString(1, password);
	pstm.setString(2, address);
	pstm.setInt(3, phoneNum);
	pstm.setString(4, email);
	pstm.setString(5, email2);
	pstm.setString(6, id);
	
	check = pstm.executeUpdate();
		response.sendRedirect("mypage.jsp");
		
		if(pstm != null) {
			pstm.close();
		}if(conn != null) {
			conn.close();
		}
		
	%>
	<script>
		if(check==1){
			alert("회원정보가 수정되었습니다 !");
			location.href = "mypage.jsp";
		}else{
			alert("회원정보 수정이 실패했습니다 !");
			location.href = "memberUpdate.jsp";
		}
	</script>
</body>
</html>