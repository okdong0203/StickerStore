<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnector.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String filename="";    

   MultipartRequest multi = new MultipartRequest(request, "c:\\upload", 20*1024*1024, "utf-8");

   String productId = multi.getParameter("productId");
   String name = multi.getParameter("name");
   String unitPrice = multi.getParameter("unitPrice");
   String description = multi.getParameter("description");
   String category = multi.getParameter("category");
   String unitsInStock = multi.getParameter("unitsInStock");
   
   //가격과 재고수량을 입력여부를 체크
   Integer price;
   if(unitPrice.isEmpty()){
      price=0;
   }else{
      price = Integer.valueOf(unitPrice);
   }
   
   long stock;
   if(unitsInStock.isEmpty()){
      stock=0;
   }else{
      stock = Long.valueOf(unitsInStock);
   }
   
   //파일 읽어 온 것을 처리
   Enumeration files = multi.getFileNames();
   String fname = (String)files.nextElement();
   String fileName = multi.getFilesystemName(fname);
   
   PreparedStatement pstmt = null;
   
   String sql = "INSERT INTO product_tbl VALUES(?,?,?,?,?,?,?)";
   
   pstmt = conn.prepareStatement(sql);
   
   pstmt.setString(1,productId);
   pstmt.setString(2, name);
   pstmt.setInt(3,price);
   pstmt.setString(4,description);
   pstmt.setString(5, category);
   pstmt.setLong(6, stock);
   pstmt.setString(7, fileName);
   pstmt.executeUpdate();
   
   if(pstmt != null)  
      pstmt.close();
   if(conn != null)
      conn.close();
   
   response.sendRedirect("./products.jsp");
  %>

</body>
</html>