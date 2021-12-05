<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<title>상품 수정</title>


</head>
<body>
	<jsp:include page="./menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 수정</h1>
		</div>
	</div>

	<%@ include file="./dbconnector.jsp"%>

	<%
		String productId = request.getParameter("id");
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "SELECT * FROM product_tbl WHERE productId = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		rs = pstmt.executeQuery();

		if (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">!
				<img src="./image/<%=rs.getString("filename")%>" alt="image"
					style="width: 300px; height: 250px;" />
			</div>
			<div class="col-md-7">
				<form action="./processUpdateProduct.jsp" class="form-forizontal"
					method="post" name="newProduct" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">상품 코드</label>
						<div class="col-sm-3">
							<input type="text" name="productId" id="productId"
								class="form-control" style="width: 150px;"
								value="<%=rs.getString("productId")%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상품명</label>
						<div class="col-sm-3">
							<input type="text" name="name" id="name" class="form-control"
								style="width: 150px;" value="<%=rs.getString("pname")%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2"> 가격</label>
						<div class="col-sm-3">
							<input type="text" name="unitPrice" id="unitPrice"
								class="form-control" value="<%=rs.getString("unitprice")%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상세 설명</label>
						<div class="col-sm-5">
							<textarea name="description" cols="50" rows="2"
								class="form-control"><%=rs.getString("description")%></textarea>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">분류</label>
						<div class="col-sm-3">
							<input type="text" name="category" id="category"
								class="form-control" value="<%=rs.getString("category")%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">재고 수</label>
						<div class="col-sm-3">
							<input type="text" name="unitsInStock" id="unitsInStock"
								class="form-control" value="<%=rs.getString("unitsInStock")%>" />
						</div>
					</div>

					<div class="form-group row">
						<label class="first-column">이미지</label>
						<div class="col-sm-5">
							<input type="file" name="productImage" class="form-control"
								style="width: 250px;">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary" value="등록">
						</div>
					</div>

				</form>
			</div>
		</div>

	
	<%
		}

		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>

</div>




	<jsp:include page="./footer.jsp" />
</body>
</html>