<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="com.product.dao.*"%>
<%@ page import="com.product.dto.*"%>
<%@ page import="com.cart.dto.*"%>
<%@ include file="dbconnector.jsp" %>


<%! int orderSum; %>

<%
	request.setCharacterEncoding("UTF-8");

String sessionId = (String)session.getAttribute("loginId");

	
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";
	
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
		
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_country"))
				shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_zipCode"))
				shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
<html>
<head>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<title>주문 정보</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>

	<div class="container col-8 alert alert-info">
		<div class="text-center ">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>배송 주소</strong> <br> 성명 : <% out.println(shipping_name); %>	<br> 
				우편번호 : <% 	out.println(shipping_zipCode);%><br> 
				주소 : <%	out.println(shipping_addressName);%>(<%	out.println(shipping_country);%>) <br>
			</div>
			<div class="col-4" align="right">
				<p>	<em>배송일: <% out.println(shipping_shippingDate);%></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">			
			<tr>
				<th class="text-center">제품이름</th>
				<th class="text-center">수량</th>
				<th class="text-center">가격</th>
				<th class="text-center">소계</th>
			</tr>
				 <%    
     	  
     		CartDTO cdto = new CartDTO();
     	   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   
		   String sql = "select cartno, product_tbl.pname, product_tbl.unitPrice, cart.QUANTITY,product_tbl.unitPrice*cart.QUANTITY from cart inner join product_tbl on cart.fk_productId = product_tbl.productId inner join member_tbl on cart.fk_userId = member_tbl.id where cart.fk_userId=?";
		  
		   pstmt = conn.prepareStatement(sql);	
		   pstmt.setString(1,sessionId);
		   
		   rs = pstmt.executeQuery();
		   while(rs.next()){ 
		   %>
		   
			<tr>
				<td class="text-center"><em><%=rs.getString("pname")%></em></td>
				<td class="text-center"><%=rs.getString("quantity")%></td>
				<td class="text-center"><%=rs.getString("unitprice")%>원</td>
				<td class="text-center"><%=rs.getString("product_tbl.unitPrice*cart.QUANTITY")%>원</td>
				<%cdto.setTotal(rs.getInt("product_tbl.unitPrice*cart.QUANTITY")); %>
				<%orderSum += cdto.getTotal(); %>
			</tr>
			
			   <%  
		   }
		  if(rs != null)
			  rs.close();
		  if(pstmt != null)
			  pstmt.close();
		  if(conn != null)
			 conn.close();
	 			%>
			
			<tr>
				<td> </td>
				<td> </td>
				<td class="text-right">	<strong>총액:<%=orderSum%> </strong></td>
				<td class="text-center text-danger"><strong> </strong></td>
			</tr>
			
			
			
			</table>
			
				<a href="./shippingInfo.jsp"class="btn btn-secondary" role="button"> 이전 </a>
				<a href="./thankCustomer.jsp"  class="btn btn-success" role="button"> 주문 완료 </a>
				<a href="./checkOutCancelled.jsp" class="btn btn-secondary"	role="button"> 취소 </a>			
		</div>
	</div>	
</body>
</html>
