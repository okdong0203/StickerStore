<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnector.jsp" %>
<!DOCTYPE html>
<html>
<head>
    
    <title>STICKER STORE</title>

    <link rel="stylesheet" href="./css/basic.css">
   	<link rel="stylesheet" href="./css/bubble.css">
   	<link rel="stylesheet" href="./css/footer.css">
	<link href="${pageContext.request.contextPath}./css/basic.css">
   	<link href="${pageContext.request.contextPath}./css/bubble.css">
   	<link href="${pageContext.request.contextPath}./css/footer.css">
  
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
 	<link rel="preconnect" href="https://fonts.gstatic.com">
  	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    
  	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">
	
	


</head>
<body>
	<div class ="box-all">
    <!--전체 div 시작-->
   		
		<jsp:include page="./header.jsp"></jsp:include>


    
        <!--middle-index 시작-->
        <div class="middle-index">


          <div class="flow-menu">
        
            <div class="flow-menu-title">스티커</div>
        
            <br>
            
            <div class="sticker-number">버블 스티커(총 20개)</div>
        
            <div class="home-text">홈 > </div>
          
            <div class="newest">| 최신등록순 |</div>
                
     
     		</div>
    
            <% PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   String sql = "select * from product_tbl";
		   pstmt = conn.prepareStatement(sql);
		   rs = pstmt.executeQuery();
		   while(rs.next()){
		   %>

        <div class="flow-menu-copy1">
            
            <div class="flow-menu-detail" >
        
        
            <div class="flow-menu-image">
         <img src="./image/<%=rs.getString("filename")%>">
           
            </div>
        
            <div class="flow-menu-text">
                <div class="flow-menu-text-first-line"><%=rs.getString("pname") %></div>
        
                <div class="flow-menu-text-price"><%=rs.getString("unitprice") %>원&nbsp;</div>
        	
        	
        	
        	
        	
                
 				<div class="flow-menu-information">               
                    <p><a href="./StickerInfo.jsp?id=<%=rs.getString("productId") %>" 
            		>상세정보 &raquo;</a>
               </div> 
               
                
            </div><!--flow-menu-text 끝-->       
        
        </div><!--flow-menu-detail 끝-->
        
        
        <HR width="92%" align="right" 
        style=" background-color:rgb(185, 175, 163); height:1px; border:none;
        margin-top:-113px; margin-left:325px;" >
        </div><!--flow-menu 끝-->
        
        
             <%   }
					
		  if(rs != null)
			  rs.close();
		  if(pstmt != null)
			  pstmt.close();
		  if(conn != null)
			 conn.close();
	 			%>
        
        </div><!--flow-menu 끝-->
       	
	

  	   
        
      <!--footer-index 시작--> 
      
     <jsp:include page="./footer.jsp"></jsp:include>

      
      <!--footer-index 끝-->


        <!--middle-index 끝-->
</div>


</body>
</html>