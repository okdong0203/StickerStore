<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="./dbconnector.jsp" %>

<html><head><title>상품 목록</title>
<link href="https://unpkg.com/ress/dist/ress.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link href="./css/basic.css" rel="stylesheet">
<link href="./css/container.css" rel="stylesheet">
<style>
.main-container div{float : left; 
               width : 33%;
                    height : 300px;
                    line-height: 25px;
                    border: 1px solid black;
                    margin-bottom:30px;
                    }
hr{clear : both;}
.test{width:80%;}
</style> </head> <body>
 
   <%@ include file="./menu.jsp" %>
   <div class="container">
         <h1>상품 목록</h1>
   </div>
   
   <div class="main-container">
        
      
      <%
   
      String productId = request.getParameter("id");   
      
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      String sql = "select * from product_tbl";
      pstmt = conn.prepareStatement(sql);
      rs = pstmt.executeQuery();
      
      if (rs.next()) {
         sql = "DELETE FROM product_tbl where productId = ?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, productId);
         pstmt.executeUpdate();
      } else
         out.println("일치하는 상품이 없습니다");
      
      if (rs != null)
         rs.close();
         if (pstmt != null)
            pstmt.close();
         if (conn != null)
         conn.close();
      
         response.sendRedirect("./editProduct.jsp?edit=delete");

   %>
      <hr/>

</body>
</html>