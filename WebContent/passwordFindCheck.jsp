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
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");

boolean result = mj.passwordFind(id, name);

if(result){
	session.setAttribute("sessionId", id);
%>
<script>location.href="processPasswordFind.jsp";</script>
<%}else{ %>
    <script type="text/javascript">alert("일치하는 정보가 없습니다"); location.href="passwordFind.jsp";</script>
    <%} %>
    
</body>
</html>