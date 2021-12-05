<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnector.jsp" %>
<%@ page import="com.sticker.dao.*" %>
<%@ page import="com.sticker.dto.*" %>
<!DOCTYPE html>
<html>



<head>
    
    <title>STICKER STORE</title>

    <link rel="stylesheet" href="./css/basic.css">
   	<link rel="stylesheet" href="./css/stickerInfo.css">
	<link href="${pageContext.request.contextPath}./css/basic.css">
   	<link href="${pageContext.request.contextPath}./css/stickerInfo.css">
  
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
 	<link rel="preconnect" href="https://fonts.gstatic.com">
  	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    
  	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">
	
	


</head>
<body>

    <!--전체 div 시작-->
    <div class="box-all">

  <jsp:include page="./header.jsp"></jsp:include>


        

	 	<%		 
	    		String sessionId = (String) session.getAttribute("loginId"); 
	    
	   
		       String productId = request.getParameter("id");
		
			    PreparedStatement pstmt = null;
			    ResultSet rs = null;
			    
				String sql ="SELECT * FROM product_tbl WHERE productId = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, productId);
				rs = pstmt.executeQuery();
				
				if(rs.next()){
				
		%>
		
		<!--middle-index 시작-->
        <div class="middle-index">

         	<form name="frm" id="frm" action="./cartAdd.jsp?id=<%=rs.getString("productId") %>" method="post">
			<!--  <input type="hidden" id="productId" name="productId" value="xm234jq"> -->
          <div class="middle-box">

		
          <div class="left-box">
            <img src="./image/<%=rs.getString("filename")%>">
          </div>

			
          <div class="right-box">

            <a href="all.html"><div class="sticker">스티커</div></a>

            <a href="index.html"><div class="home">홈 ></div></a>

            <div class="name"><%=rs.getString("pname") %></div>

            <div class="money"><%=rs.getString("unitprice") %>원</div>

            <div class="delivery">배송비 :  2,500원(30,000원 이상 구매 시 무료)</div>

            <div class="num-text">수량:<input type="text" name="quantity" value="1" style="width:150px";></div>

          

            <br>

            <div class="allMoney-text">상품 금액:</div>

            <div class="allMoney">
              <span class="won"><%=rs.getString("unitprice") %>원</span>
            </div>
				
             <button class="buyButton"  onClick="location.href='cartPage.jsp'">구매하기</button>
          
          <!--  	<input type="submit" class="buyButton" value="장바구니"> -->

            <button class="addCart" onClick="location.href='deleteCart.jsp'">장바구니에 담기</button>
            
            	
          </div>

		





        </div>
        </form>
        
           <%   }
					
		  if(rs != null)
			  rs.close();
		  if(pstmt != null)
			  pstmt.close();
		  if(conn != null)
			 conn.close();
	 			%>
        </div>
        <!--middle-index 끝-->

        <!--footer-index 끝-->
            

    </div>
   
</body>
</html>
