<%@page import="com.sticker.dto.MemberDTO"%>
<%@page import="com.sticker.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   	request.setCharacterEncoding("UTF-8");
   %>
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
<title>회원정보 수정</title>
</head>
<body>
<jsp:include page="./header.jsp"/>  

<form action="processMemberUpdate.jsp" method="post" name="update">
   <div class="index-midbox">

          <li>
            <HR width="100%" align="right" style="margin-top:100px; margin-bottom:-20px; background-color:rgb(185, 175, 163); height:3px; border:none" >
            <div class="list">회원 정보 수정</div>
            <HR width="100%" align="right" style="margin-bottom:10px; background-color:rgb(185, 175, 163); height:3px; border:none" >
          </li>

          <br>
          <li>
            
            <br> 
            <HR width="100%" align="right" style="margin-bottom:13px; background-color:rgb(185, 175, 163); height:3px; border:none" >
        
            <div class="lab">아이디 : <%=id %></div>


              <HR width="100%" align="right" style="margin-top:13px; margin-bottom:10px; background-color:rgb(185, 175, 163); height:1px; border:none" >
              <div class="lab">이름 : <%=mDTO.getName() %></div>

			  <HR width="100%" align="right" style="margin-top:13px; margin-bottom:10px; background-color:rgb(185, 175, 163); height:1px; border:none" >
              <div class="lab">비밀번호 : <input class="middle-box"  type="password" name="password"></div>
	

              <HR width="100%" align="right" style="margin-top:13px; margin-bottom:10px; background-color:rgb(185, 175, 163); height:1px; border:none" >
            <div class="lab">성별 : <%=mDTO.getGender() %></div>

            <HR width="100%" align="right" style="margin-top:13px;  margin-bottom:10px; background-color:rgb(185, 175, 163); height:1px; border:none" >
            <div class="lab">생년월일 : <%=mDTO.getYear() %></div>


            <HR width="100%" align="right" style="margin-top:13px;  margin-bottom:10px; background-color:rgb(185, 175, 163); height:1px; border:none" >
            <div class="lab">주소 : <input class="middle-box"  type="text" name="address" value=<%=mDTO.getAddress() %>></div>

            <HR width="100%" align="right" style="margin-top:13px;  margin-bottom:10px; background-color:rgb(185, 175, 163); height:1px; border:none" >
              <div class="lab">휴대전화 : <input class="middle-box"  type="text" name="phoneNum" value=<%=mDTO.getPhoneNum() %>></div>
            

            <HR width="100%" align="right" style="margin-top:13px; margin-bottom:10px; background-color:rgb(185, 175, 163); height:1px; border:none" >
            <div class="lab">이메일 : <input class="middle-box" type="text" name="email" value=<%=mDTO.getEmail()%>>@<select name="email2" >>
              <option>naver.com</option>
              <option>daum.net</option>
              <option>gmail.com</option>
              <option>nate.com</option>
              <option>yahoo.co.kr</option>
            </select>
			</div>
            
            <HR width="100%" align="right" style="margin-top:13px; margin-bottom:13px; background-color:rgb(185, 175, 163); height:3px; border:none" >
            </li>

<div id="button">
<input type="submit" value="회원정보수정" onclick="init()" >
</div>
</form>
</body>
</html>