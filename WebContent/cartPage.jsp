<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnector.jsp" %>
  <% 
    String id = (String) session.getAttribute("loginId"); 
    if(id == null) response.sendRedirect("login.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>STICKER STORE</title>

    <link rel="stylesheet" href="./css/basic.css">
   	
   	<link rel="stylesheet" href="./css/cartPage.css">
   	<link rel="stylesheet" href="./css/footer.css">
	<link href="${pageContext.request.contextPath}./css/basic.css">
   	<link href="${pageContext.request.contextPath}./css/header.css">
   	<link href="${pageContext.request.contextPath}./css/cartPage.css">
   	<link href="${pageContext.request.contextPath}./css/footer.css">
  
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
 	<link rel="preconnect" href="https://fonts.gstatic.com">
  	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    
  	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">
<body>

	<div class="box-all">
		
	
		<jsp:include page="./header.jsp"></jsp:include>
		
		<!--middle-index 시작-->
        <div class="middle-index">


    


          <div class="midbox">
      
           <div class="cart-text">장바구니</div>
      
            <HR width="94%" align="right" style="margin-bottom:11px; margin-top:30px;  background-color:rgb(185, 175, 163); height:1px; border:none" />
      
    
            <div class="image">번호</div>

            <div class="information">상품명</div>

            <div class="price">수량</div>

            <div class="delivery">단가</div>

            <div class="sum">합계</div>
            
             <div class="sum"><button class="delete" onClick="location.href='deleteCart.jsp'">전체 삭제</button></div>
            
            
            
            
            
            	 <%    
     	   String sessionId = (String)session.getAttribute("loginId");
     		
     	   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   
		   String sql = "select cartno, product_tbl.pname, product_tbl.unitPrice, cart.QUANTITY, product_tbl.unitPrice*cart.QUANTITY from cart inner join product_tbl on cart.fk_productId = product_tbl.productId inner join member_tbl on cart.fk_userId = member_tbl.id where cart.fk_userId=?";
		  
		   pstmt = conn.prepareStatement(sql);	
		   pstmt.setString(1,sessionId);
		   
		   rs = pstmt.executeQuery();
		   while(rs.next()){ 
		   %>
    		
           <div class="list-cartno"> <%=rs.getString("cartno") %></div>
            

            <div class="list-information"><%=rs.getString("pname") %></div>

           
            <div class="list-quantity"><%=rs.getString("quantity") %></div>


            <div class="list-price"><%=rs.getString("unitprice") %></div>

            <div class="list-sum"><%=rs.getString("product_tbl.unitPrice*cart.QUANTITY") %></div>

            

            <HR width="100%" align="right" style="margin-bottom:13px; margin-top:7px;  background-color:rgb(185, 175, 163); height:1px; border:none" />
            

       
            
			   <%   
		   }
		  if(rs != null)
			  rs.close();
		  if(pstmt != null)
			  pstmt.close();
		  if(conn != null)
			 conn.close();
	 			%>
            
           
            
            

            

            <button class="ok-button" onClick="location.href='shippingInfo.jsp'">주문하기</button>



            </div>
       

        </div>
        <!--middle-index 끝-->
		</div>
		
	
		
</body>
</html>