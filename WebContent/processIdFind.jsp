<%@page import="com.sticker.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="mj" class="com.sticker.dao.MemberDAO"/>
	<jsp:useBean id="mDTO" class="com.sticker.dto.MemberDTO"/>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
<% 
String name = request.getParameter("name");
String email = request.getParameter("email");
String email2 = request.getParameter("email2");

mDTO.setName(name);
mDTO.setEmail(email);
mDTO.setEmail2(email2);

String id = mj.idFind(mDTO);

%>
<% if(id != null){ %>
<script>alert("회원님의 아이디 = <%=id%> 입니다."); location.href="login.jsp";</script>
<%}else{%>
<script>alert("존재하지 않는 정보 입니다."); history.go(-1);</script>
<% }%>
</body>
</html>