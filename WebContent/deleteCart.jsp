<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="./dbconnector.jsp" %>

<html><head><title>상품 목록</title>

        
      
      <%
   
      String sessionId = (String)session.getAttribute("loginId");  
      
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      String sql = "select * from cart";
      pstmt = conn.prepareStatement(sql);
      rs = pstmt.executeQuery();
      
      if (rs.next()) {
         sql = "DELETE FROM cart where fk_userId=?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, sessionId);
         pstmt.executeUpdate();
      } else
         out.println("일치하는 회원의 장바구니 항목이 없습니다.");
      
      if (rs != null)
         rs.close();
         if (pstmt != null)
            pstmt.close();
         if (conn != null)
         conn.close();
      
         response.sendRedirect("./cartPage.jsp");

         String sql2 = "select sum(product_tbl.unitPrice*cart.QUANTITY) from cart inner join product_tbl on cart.fk_productId = product_tbl.productId inner join member_tbl on cart.fk_userId = member_tbl.id where cart.fk_userId=?";
   %>
      
</body>
</html>