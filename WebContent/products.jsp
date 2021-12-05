<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/bootstrap.mis.css"/>
<link href="${pageContext.request.contextPath}./css/bootstrap.mis.css"/>
<title>상품 목록</title>
</head> 
<body>

   <jsp:include page="./menu.jsp" />
   <div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
   
   <div class="container">
		<div class="row" align="center">
        <%@ include file="./dbconnector.jsp" %>
      
      <%
             PreparedStatement pstmt = null;
             ResultSet rs = null;
            String sql ="SELECT * FROM product_tbl";
      
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()){
         %>
         <div class="col-md-4">
              <img src="./image/<%=rs.getString("filename")%>" style="width: 170px; height:170px;">
            <h3><%=rs.getString("pname") %></h3>
            <p><%=rs.getString("description") %>
            <p><%=rs.getString("unitprice") %>원
            <p><a href="./productInfo.jsp?id=<%=rs.getString("productId") %>" 
            class="btn-secondary" role="button">상세정보 &raquo;</a>
         </div>
         <%
            }
            
            if(rs!=null)
               rs.close();
            if(pstmt != null)
               pstmt.close();
            if(conn != null)
               conn.close();
         %>
   </div>
   
    <hr>
    
    </div>
   
</body>
</html>