<%@page import="com.sticker.dto.MemberDTO"%>
<%@page import="com.sticker.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
     	request.setCharacterEncoding("UTF-8");
               
              MemberDAO mj = new MemberDAO();
              MemberDTO mDTO = new MemberDTO();
              
              String id = (String) session.getAttribute("loginId"); 
              String password = request.getParameter("password");
              
              mDTO.setId(id);
              mDTO.setPassword(password);
              
              boolean result = mj.login(id, password);
              
              if(result){
          	mj.deleteMember(id); 
          	session.invalidate();
          	out.print("<script>alert('회원이 탈퇴 되었습니다.'); location.href = 'index.jsp';</script>");
              }else{ 
              	out.print("<script>alert('비밀번호가 일치하지 않습니다.'); location.href = 'memberDelete.jsp';</script>");	
             }
     %>
    	
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>

</body>
</html>