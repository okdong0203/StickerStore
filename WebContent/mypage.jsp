<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<html>
<head>
   
    <title>마이페이지</title>

    <link rel="stylesheet" href="./css/mypage.css">
  	<link href="${pageContext.request.contextPath}./css/mypage.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
  
    <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" >
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">


</head>
<body>

<jsp:include page="./header.jsp" />
        


<div class="box-all">


        <!--middle-index 시작-->
        <div class="middle-index">


          <div class="page-name">
            MY PAGE
      
          </div>




          <div class="top-text">
            <img src="./image/minilogo2.PNG">
            저희 쇼핑몰을 이용해주셔서 감사합니다. 회원님의 정보 관리를 위한 마이페이지입니다.
          </div>
  
          

          <button class="button1">
            <a href="cartPage.jsp">
      
            <div class="button-name">장바구니</div>
      
            <div class="button-info">
              장바구니에 담은 상품을 
              <br/>관리하는 공간입니다.
            </div>
      
          </a>
          </button>

          <button class="button2">
            <a href="memberUpdate.jsp">
      
            <div class="button-name">회원정보 수정</div>
      
            <div class="button-info">
              회원 정보를 <br/>
              수정하는 공간입니다.
            </div>
     
          </a>
          </button>



          <button class="button3">
            <a href="memberDelete.jsp">
      
            <div class="button-name" onclick="memberDelete()">회원탈퇴</div>
      
            <div class="button-info">
              회원 탈퇴를 위한<br/>
              공간입니다.
            </div>
      
          </a>
          </button>





        </div>
        <!--middle-index 끝-->


        <HR width="95%" align="right" 
        style=" background-color:rgb(185, 175, 163); height:1px; border:none;
        margin-top:-260px;margin-left:25px;" >
          
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
</body>
</html>