<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    
    <title>STICKER STORE</title>

    
    
    <link rel="stylesheet" href="./css/basic.css">
    <link rel="stylesheet" href="./css/header.css">
    <link href="${pageContext.request.contextPath}./css/basic.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">


</head>
<body>
	<%   
   String cp = request.getContextPath();
   String sessionId = (String)session.getAttribute("loginId");
   %>
		
    <!--전체 div 시작-->
    <div class="box-all">

      <!--top-index 시작-->
      <div class="header-index" >

        <div class="navi-back-color">
          
          <div class="left-navi">
            #DIARY #STICKER #STICKERSTORE
          </div>

		<%if(sessionId==null){ %>
            <div class="navi">
                <a href="login.jsp">로그인</a>
                <a href="join.jsp">회원가입</a>
                <a href="index.jsp">home</a>
            </div>
		<%} else if(sessionId.equals("admin")){ %>
			<div class="navi">
                <a href="logout.jsp">로그아웃</a>
                <a href="products.jsp">관리자</a>
                <a href="index.jsp">home</a>
            </div>
            <% } else{%>
               <div class="navi">
               <a href="logout.jsp">로그아웃</a>
               <a href="mypage.jsp">마이페이지</a>
               <a href="index.jsp">home</a>
            </div>
             <%} %>
        </div>

        <HR width="100%" align="right" style="margin-bottom:0px; margin-top:0px; color:rgb(185, 175, 163); background-color:rgb(184, 184, 184); height:1px; border:none" />

            
        
        <div class="navi-back-color-2">
            <div class="small-logo">
                <img src="./image/minilogo.PNG" alt="">
            </div>
            <div class="small-logo-text">
              귀엽고 재미난 디자인문구 맛집, sticker store | made by five
            </div>

            
             <button class="cart-navi"><a href="cart.jsp">cart</a></button>

            
        </div>



            
        <!--사이트 이름-->
        <div class="store-title">
            <a href="index.jsp">STICKER STORE</a>
        </div>
    
        <HR width="100%" align="right" style="margin-bottom:0px; background-color:rgb(185, 175, 163); height:1px; border:none" >
        



<!--메뉴 시작-->
 <div class="gnb">
     
     <ul>
        <li><a href="all.jsp">ALL</a></li>

      <li><a href="bubble.jsp">스티커</a>
          <ul>
               <li><a href="bubble.jsp">리무버블스티커</a></li>
            <li><a href="bubble.jsp">다꾸스티커</a></li>
         </ul>
      </li>

    <li><a href="cart.jsp">장바구니</a></li>

    <li><a href="mypage.jsp">마이페이지</a></li>

      <li><a href="notice.jsp">공지사항</a></li>

      <li><a href="information.jsp">판매자 정보</a></li>
   </ul>

   
 
  </div>
        


        





    </div>
    <!--header-index 끝-->



            

    </div>
</body>
</html>