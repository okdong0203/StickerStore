<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnector.jsp" %>
<%@ page import="com.sticker.dao.*" %>
<%@ page import="com.sticker.dto.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String sessionId = (String)session.getAttribute("loginId");
		String productId = request.getParameter("id"); 
		String quantity = request.getParameter("quantity");
		
		long qant;
		   if(quantity.isEmpty()){
			   qant=0;
		   }else{
			   qant = Long.valueOf(quantity);
		   }
			
			PreparedStatement pstmt = null;
			
				

			String sql = "insert into cart values(TO_CHAR(cartno.nextval),?,?,?)";
			 
			   pstmt = conn.prepareStatement(sql);
			   
			   pstmt.setString(1,sessionId);
			   pstmt.setString(2,productId);
			   pstmt.setLong(3,qant);
			   pstmt.executeUpdate();
				   
				   
				  	   if(pstmt != null)  
					      pstmt.close();
					   if(conn != null)
					      conn.close();
					   
					   response.sendRedirect("./cartPage.jsp");
			
		
	%>
		
</body>
</html>