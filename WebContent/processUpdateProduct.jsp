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
   ResultSet rs = null;


   String sql = "select * from product_tbl where productId = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1, productId);
   rs = pstmt.executeQuery();
   if (rs.next()) {
      if (fileName != null) {
         sql = "UPDATE product_tbl SET pname=?, unitPrice=?, description=?,category=?, unitsInStock=?, filename=? WHERE productId =?";
         //각각을 수정할 때는 다음과 같이 적어줘야 한다. productId를 중심으로 업데이트를 진행한다.
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, name);
         pstmt.setInt(2, price);
         pstmt.setString(3, description);
         pstmt.setString(4, category);
         pstmt.setLong(5, stock);
         pstmt.setString(6, fileName);
         pstmt.setString(7, productId);
         pstmt.executeUpdate();
         
      } else {
         sql = "UPDATE product_tbl SET pname=?, unitPrice=?, description=?,category=?, unitsInStock=? WHERE productId =?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, name);
         pstmt.setInt(2, price);
         pstmt.setString(3, description);
         pstmt.setString(4, category);
         pstmt.setLong(5, stock);
         pstmt.setString(6, productId);
         pstmt.executeUpdate();
      }
  
   }
   if (rs != null)
      rs.close();
    if (pstmt != null)
       pstmt.close();
    if (conn != null)
      conn.close();
  
   response.sendRedirect("./editProduct.jsp?edit=update");
   
%>

