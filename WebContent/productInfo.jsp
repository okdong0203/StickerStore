<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.product.dto.ProductDTO"%>
<%@ page import="com.product.dao.ProductDAO" %>
<%@ page errorPage="errorProductId.jsp"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>




<link rel ="stylesheet" href ="./css/bootstrap.min.css" />

<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>

</head><body>
	<jsp:include page="./menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
		<%@ include file="./dbconnector.jsp" %>
 	   
		<%
		       String productId = request.getParameter("id");
		
			    PreparedStatement pstmt = null;
			    ResultSet rs = null;
			    
				String sql ="SELECT * FROM product_tbl WHERE productId = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, productId);
				rs = pstmt.executeQuery();
				
				if(rs.next()){
				
		%>
	<div class="container">
		<div class="row">
			<div class ="col-md-5">
			<img src ="./image/<%=rs.getString("filename")%>" style="width: 300px; height:300px;" /> 
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("pname") %></h3>
				<p><%=rs.getString("description") %>
				<p><b>▷ 상품 코드 : </b><span class="badge badge-danger"> <%=rs.getString("productId")%></span>
				<p><b>▷ 분류</b> : <%=rs.getString("category")%>
				<h3><b>▷ 재고 수</b> : <%=rs.getString("unitsInStock")%> </h3>
				<h4> : <%=rs.getString("unitprice") %>원</h4>
				<p><form name="addForm" action="./addCart.jsp?id=<%=rs.getString("productId") %>" method="post">
					 <a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a> 
					 <a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
					 <br>
					 <br>
					 <a href="./products.jsp" > ▷ 상품 목록</a>
					 <a href="#"> ▷ 상품 주문</a>
				 	 <a	href="./products.jsp"> ▷ 상품 목록</a></p>
				 </form>
			</div>
			</div>
			<hr>
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
	
    <hr/>

	<jsp:include page="./footer.jsp" />
</body>
</html>