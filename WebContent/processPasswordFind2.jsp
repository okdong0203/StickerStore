<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.sticker.dao.MemberDAO"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnector.jsp" %>
<%@ page import="com.sticker.dao.DBConnecter" %>


    <jsp:useBean id="mj" class="com.sticker.dao.MemberDAO"/>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; utf-8"); %>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
<%!int check = 0;%>

<%
String id = (String)session.getAttribute("sessionId");
String password = request.getParameter("password");

Connection con = null;
PreparedStatement pstm = null;

String sql = "UPDATE MEMBER_TBL SET PASSWORD=? WHERE ID=?";

	conn = DBConnecter.getConnection();
	   pstm = conn.prepareStatement(sql);
	   pstm.setString(1, password);
	   pstm.setString(2, id);
	   
	   check = pstm.executeUpdate();
		
	   
	
	if(pstm != null) {
			pstm.close();
		}if(conn != null) {
			conn.close();
		}
	
%>
<% 
		if(check==1){
			session.invalidate();
			response.sendRedirect("login.jsp");
		}else{
			session.invalidate();
			response.sendRedirect("passwordFind.jsp");
		}
%>
</body>
</html>