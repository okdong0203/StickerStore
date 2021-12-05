<%@page import="com.sticker.dto.MemberDTO"%>
<%@page import="com.sticker.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = (String) session.getAttribute("loginId"); 
            if(id == null) response.sendRedirect("login.jsp");
    %>
     <%
     	MemberDAO mj = new MemberDAO();
              MemberDTO mDTO = mj.memberInfo(id);
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
  <link rel="stylesheet" href="./css/memberDelete.css">
  <script type="text/javascript">
  function check(){
	  var form = document.deleteMember;
	  if(!form.password.value){
		  alert("비밀번호를 입력해주세요.");
		  return false;
	  }else alert("회원정보를 삭제하시겠습니까 ??");
  }
  </script>
</head>
<body>
<jsp:include page="./header.jsp" />
<form action="processDelete.jsp" name="deleteMember" onsubmit="return check()">
 <div class="index-midbox">

          <li>
            <HR width="100%" align="right" style="margin-top:100px; margin-bottom:-20px; background-color:rgb(185, 175, 163); height:3px; border:none" >
            <div class="list">회원 탈퇴</div>
            <HR width="100%" align="right" style="margin-bottom:10px; background-color:rgb(185, 175, 163); height:3px; border:none" >
          </li>

          <br>
          <li>
            
            <br> 
            <HR width="100%" align="right" style="margin-bottom:13px; background-color:rgb(185, 175, 163); height:3px; border:none" >
        
            <div class="lab">아이디 : <%=id %></div>


			  <HR width="100%" align="right" style="margin-top:13px; margin-bottom:10px; background-color:rgb(185, 175, 163); height:1px; border:none" >
              <div class="lab">비밀번호 : <input class="middle-box"  type="password" name="password"></div>
	
            
            <HR width="100%" align="right" style="margin-top:13px; margin-bottom:13px; background-color:rgb(185, 175, 163); height:3px; border:none" >
            </li>

<div id="button">
<input type="submit" value="회원탈퇴">
<input type="button" value="취소" onclick="location.href='index.jsp'">
</div>


</form>
</body>
</html>