<%@page import="com.sticker.dto.MemberDTO"%>
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
   <link rel="stylesheet" href="./css/passwordFind.css">
<meta charset="UTF-8">
<title>비밀번호 설정</title>
<script type="text/javascript">
function inputCheck() {
	var form = document.passwordFind
	if(!form.passsword.value){
		alert("비밀번호를 입력해주세요.");
		form.password.focus();
		return false;
	}
	if(!form.passwordCheck.value){
		alert("비밀번호 확인란을 입력해주세요.");
		form.passwordCheck.focus();
		return false;
	}
	if(form.password.value != form.passwordCheck.value){
		alert("비밀번호가 일치하지 않습니다.");
		form.passwordCheck.focus();
		return false;
	}
}
</script>
</head>
<body>
 <!--전체 div 시작-->
    <div class="box-all">

	<jsp:include page="header.jsp"/>
        

        <HR width="100%" align="right" style="margin-bottom:0px; margin-top:0px;  background-color:rgb(185, 175, 163); height:1px; border:none" />


    </div>
    <!--header-index 끝-->


        <!--middle-index 시작-->
        <div class="middle-index">


          <div class="midbox">
      
           <div class="id-find-text">비밀번호 설정</div>
      
            <HR width="100%" align="right" style="margin-bottom:30px; margin-top:30px;  background-color:rgb(185, 175, 163); height:1px; border:none" />
			<%
			String id = (String)session.getAttribute("sessionId");
			%>      
            
           <form action="processPasswordFind2.jsp" method="post" name="passwordFind" onsubmit="return inputCheck()">
           
             <input type="password" class="pass-box" name="password" placeholder="비밀번호 입력">

            <input type="password" class="pass-box" name="passwordCheck" placeholder="비밀번호 확인">
            
            <input id="button" type="submit" value="확인">
            
			</form>      

            <HR width="100%" align="right" style="margin-bottom:30px; margin-top:10px;  background-color:rgb(185, 175, 163); height:1px; border:none" />


            </div>


        </div>
        <!--middle-index 끝-->


        <HR width="95%" align="right" 
        style=" background-color:rgb(185, 175, 163); height:1px; border:none;
        margin-top:200px;margin-left:25px;" >
          
        <!--footer-index 시작-->  
        <div class="footer-index">

          <div class="footer-1">

            <div class="footer-title">스티커스토어</div>
            
            <div class="footer-text">
                사업자등록번호 : 000-00-00000
                <br/><br/>
                대표 : 5조 || 서울특별시 관악구 봉천로 227 보라매 샤르망 505호
                <br/><br/>
                전화 : 1588-0000 | 이메일 : email.naver.com
            </div>
            
            </div>
            
            
            
            
            <div class="footer-2">
            <div class="footer-title">고객센터</div>
            
            <div class="footer-text">
                서울 특별시 관악구 봉천로 227 보라매 샤르망
                <br/><br/>
                전화 1588-0000
                <br/><br/>
                결제도용신고 1588-0000
            </div>
            
            </div>
            
            
            
            
            
            <div class="footer-3">
            <div class="footer-title">전자금융거래 분쟁처리</div>
            
            <div class="footer-text">
                전화 1588-0000
            </div>
            </div>

        </div>
        <!--footer-index 끝-->
            

    </div>

</body>
</html>