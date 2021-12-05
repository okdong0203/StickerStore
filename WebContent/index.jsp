<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STICKER STORE</title>

    <link rel="stylesheet" href="./css/basic.css">
    <link rel="stylesheet" href="./css/index.css">
    <link href="${pageContext.request.contextPath}./css/basic.css">
   	<link href="${pageContext.request.contextPath}./css/index.css">
   		<link href="${pageContext.request.contextPath}./css/header.css">
  
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

	<div class ="box-all">
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
        

      <li><a href="bubbleSticker.jsp">스티커</a>
          <ul>
               <li><a href="bubbleSticker.jsp">리무버블스티커</a></li>
            <li><a href="bubbleSticker.jsp">다꾸스티커</a></li>
         </ul>
      </li>

    <li><a href="cartPage.jsp">장바구니</a></li>

    <li><a href="mypage.jsp">마이페이지</a></li>

     

      <li><a href="information.jsp">판매자 정보</a></li>
   </ul>

   
 
  </div>
        


        

        <HR width="100%" align="right" style="margin-bottom:0px; margin-top:0px;  background-color:rgb(185, 175, 163); height:1px; border:none" />


 <!--메인 이미지-->
        <div class="main-image-box">
            <img src="./image/bear.png"  style=" width:960px; height:292px; ">
        </div>

        <div class="main-image-under">스티커 스토어 고객님의 다꾸를 위한 다이어리 구매처</div>


        <a href="https://iminuit.com/?NaPm=ct%3Dkv0t5xqm%7Cci%3Dcheckout%7Ctr%3Dds%7Ctrx%3D%7Chk%3Dd35584b0ab5bee7c694792f99991ff590c49aa18#01"
        style="width:960px; height:40px;padding-top:13px; ">
          <div class="main-image-under-text" 
        style="height:40px;padding-top:13px; background-color: rgb(218, 212, 201); color:white; font-family: 'Archivo Black', sans-serif;
        font-size:10px; padding-left:270px; margin-bottom:40px;
       ">
          https://iminuit.com/?NaPm=ct%3Dkv0t5xqm%7Cci%3Dcheckout%7Ctr%<br/>3Dds%7Ctrx%3D%7Chk%3Dd35584b0ab5bee7c694792f99991ff590c49aa18#01
        </div>
      </a>


    </div>

        <!--middle-index 시작-->
        <div class="middle-index">
        <!--월간 베스트 시작-->
        <div class="best-month-product-box">

          
          <div class="best-month-product-title" 
          style="margin-top:60px; margin-bottom:30px;" >
            월간베스트
          </div>

          <div class="best-month-category">
            <strong>[월간 베스트]</strong> | 인기상품 | 전체상품
            </div>

            <!--월간 베스트 상품 시작-->
          <div class="best-month-product">

            <!--월간 베스트 hover 들어간 이미지 시작-->
            <a href="bubbleSticker.jsp">
              <div class="box-2" style="margin-top:15px;">
                <div class="text">
                  해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
                </div>
              </div>
            </a>

            <a href="bubbleSticker.jsp">
              <div class="box-1" style="margin-top:15px;">
                <div class="text">
                  해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
                </div>
              </div>
            </a>

            <a href="bubbleSticker.jsp">
              <div class="box-5" style="margin-top:15px;"">
                <div class="text">
                  해당 스티커 카테고리를 
                    <br/>
                    아래에 상단 링크에 걸어둡니다 :)
                </div>
              </div>
            </a>


            <a href="bubbleSticker.jsp">
              <div class="box-3" style="margin-top:15px; margin-right:0px;">
                <div class="text">
                  해당 스티커 카테고리를 
                    <br/>
                    아래에 상단 링크에 걸어둡니다 :)
                </div>
              </div>
            </a>



            <!--월간 베스트 텍스트 시작-->
            <a href="bubbleSticker.jsp">
              <div class="product-text-1">
    
                <div class="name">
                  친구 스티커
                </div>
    
                <div class="name-under">
              
                <div class="price">
                  2,500원
                </div>
    
                <a href="bubbleSticker.jsp">
                <button class="button-1">#리무버블</button>
                <button class="button-1">#리무버블스티커</button>
                </a>
    
              </div>
             </div>
              </a>



              <a href="bubbleSticker.jsp">
                <div class="product-text-2">
      
                  <div class="name">
                    화난 곰 스티커
                  </div>
      
                  <div class="name-under">
                
                  <div class="price">
                    2,500원
                  </div>
      
                  <a href="bubbleSticker.jsp">
                  <button class="button-1">#씰</button>
                  <button class="button-1">#씰스티커</button>
                  </a>
      
                </div>
               </div>
                </a>


                <a href="bubbleSticker.jsp">
                  <div class="product-text-3">
        
                    <div class="name">
                     소프트 콘 스티커
                    </div>
        
                    <div class="name-under">
                  
                    <div class="price">
                      2,500원
                    </div>
        
                    <a href="bubbleSticker.jsp">
                    <button class="button-1">#리무버블</button>
                    <button class="button-1">#리무버블스티커</button>
                    </a>
        
                  </div>
                 </div>
                  </a>


                  <a href="bubbleSticker.jsp">
                    <div class="product-text-4" >
          
                      <div class="name">
                        리곰문구 스티커
                      </div>
          
                      <div class="name-under">
                    
                      <div class="price">
                        2,500원
                      </div>
          
                      <a href="bubbleSticker.jsp">
                        <button class="button-1">#씰</button>
                        <button class="button-1">#씰스티커</button>
                      </a>
          
                    </div>
                   </div>
                    </a>
  

          </div>

        </div>






        <HR width="95%" align="right" 
        style=" background-color:rgb(185, 175, 163); height:1px; border:none;
        margin-top:40px;margin-left:25px;" >



        
        <!--인기 상품 시작-->
        <div class="best-product-box">

          <div class="best-product-title" style="margin-bottom:30px;">
            인기상품
          </div>

          <div class="best-category">
            월간 베스트 | <strong>[인기상품]</strong> | 전체상품
            </div>

          <div class="best-product">

            <!--인기 상품 첫번째 줄 hover 들어간 이미지 시작-->
            <a href="bubbleSticker.jsp">
              <div class="box-1" style="margin-top:15px;">
                <div class="text">
                  해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
                </div>
              </div>
            </a>

            <a href="bubbleSticker.jsp">
              <div class="box-2" style="margin-top:15px;">
                <div class="text">
                  해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
                </div>
              </div>
            </a>

            <a href="bubbleSticker.jsp">
              <div class="box-3" style="margin-top:15px;">
                <div class="text">
                  해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
                </div>
              </div>
            </a>

            <a href="bubbleSticker.jsp">
              <div class="box-4" style="margin-top:15px;">
                <div class="text">
                  해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
                </div>
              </div>
            </a>









          <!--인기 상품 첫번째 줄 텍스트 시작-->
          <a href="bubbleSticker.jsp">
          <div class="product-text-1">

            <div class="name">
              화난 곰 스티커
            </div>

            <div class="name-under">
          
            <div class="price">
              2,500원
            </div>

            <a href="bubbleSticker.jsp">
            <button class="button-1">#리무버블</button>
            <button class="button-1">#리무버블스티커</button>
            </a>

          </div>
         </div>
          </a>

          <a href="bubbleSticker.jsp">
          <div class="product-text-2">

            <div class="name">
              친구 스티커 
            </div>
          
            <div class="name-under">

            <div class="price">
              2,500원
            </div>

            <a href="bubbleSticker.jsp">
              <button class="button-1">#리무버블</button>
              <button class="button-1">#리무버블스티커</button>
              </a>

          </div>
          </div>
          </a>


          <a href="bubbleSticker.jsp">
          <div class="product-text-3" style="margin-left:85px;">

            <div class="name">
              리곰문구 스티커 
            </div>

            <div class="name-under">
          
            <div class="price">
              2,500원
            </div>
            
            <a href="bubbleSticker.jsp">
              <button class="button-1">#씰</button>
              <button class="button-1">#씰스티커</button>
              </a>
            </div>
          </div>
        </a>

        <a href="bubbleSticker.jsp">
        <div class="product-text-4" style="margin-left:130px;">
          <div class="name">
            홈 파티 스티커 
          </div>
          <div class="name-under">
        
          <div class="price">
            2,500원
          </div>

          <a href="bubbleSticker.jsp">
            <button class="button-1">#씰</button>
              <button class="button-1">#씰스티커</button>
            </a>
          </div>
          </div>
          </a>




          <!--인기 상품 두번째 줄 hover 들어간 이미지 시작-->
          <a href="bubbleSticker.jsp">
            <div class="box-5">
              <div class="text">
                해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
              </div>
            </div>
          </a>

          <a href="bubbleSticker.jsp">
            <div class="box-6">
              <div class="text">
                해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
              </div>
            </div>
          </a>

          <a href="bubbleSticker.jsp">
            <div class="box-7">
              <div class="text">
                해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
              </div>
            </div>
          </a>

          <a href="bubbleSticker.jsp">
            <div class="box-8">
              <div class="text">
                해당 스티커 카테고리를 
                  <br/>
                  아래에 상단 링크에 걸어둡니다 :)
              </div>
            </div>
          </a>






          <!--인기 상품 두번째 줄 텍스트 시작-->
          <a href="bubbleSticker.jsp">
            <div class="product-text-1">
  
              <div class="name">
                소프트 콘 스티커
              </div>
  
              <div class="name-under">
            
              <div class="price">
                2,500원
              </div>
  
              <a href="bubbleSticker.jsp">
                <button class="button-1">#리무버블</button>
                <button class="button-1">#리무버블스티커</button>
              </a>
            </div>
           </div>
            </a>
  
            <a href="bubbleSticker.jsp">
            <div class="product-text-2">
  
              <div class="name">
                썸머 스티커 
              </div>
            
              <div class="name-under">
  
              <div class="price">
                2,500원
              </div>
  
              <a href="bubbleSticker.jsp">
                <button class="button-1">#씰</button>
                <button class="button-1">#씰스티커</button>
                
              </a>
  
            </div>
            </div>
            </a>
  
  
            <a href="bubbleSticker.jsp">
            <div class="product-text-3" style="margin-left:145px;">
  
              <div class="name">
                방 데코 스티커  
              </div>
  
              <div class="name-under">
            
              <div class="price">
                2,500원
              </div>
              
              <a href="bubbleSticker.jsp">
                <button class="button-1">#씰</button>
                <button class="button-1">#씰스티커</button>
              </a>
  
              </div>
            </div>
          </a>
  
          <a href="bubbleSticker.jsp">
          <div class="product-text-4" style="margin-left:135px;">
            <div class="name">
              아이스크림스티커 
            </div>
            <div class="name-under">
          
            <div class="price">
              2,500원
            </div>
  
            <a href="bubbleSticker.jsp">
              <button class="button-1">#씰</button>
                <button class="button-1">#씰스티커</button>
            </a>
  
            </div>
            </div>
            </a>

            </div>


          </div>



          <HR width="95%" align="right" 
        style=" background-color:rgb(185, 175, 163); height:1px; border:none;
        margin-top:40px;margin-left:25px;" >
            

          <!--전체 상품 시작-->
          <div class="all-product-box">




              <div class="all-product-title" style="margin-top:40px; margin-bottom:30px;">
                전체상품
              </div>
    
              <div class="all-category">
                월간 베스트 | 인기상품 | <strong>[전체상품]</strong>
              </div>



              
              <div class="all-product">
                
                <a href="bubbleSticker.jsp"><img src="./image/bubble20.jpg" style="margin-top:15px;"></a>

                <a href="soft-cone-sticker.html"><img src="./image/bubble19.jpg" style="margin-top:15px;"></a>

                <a href="water-gun-sticker.html"><img src="./image/bubble18.jpg" style="margin-top:15px;"></a>

                <a href="photo-in-bear-sticker.html"><img src="./image/bubble17.jpg" style="margin-top:15px;"></a>

                <a class="img-r" href="aloha-sticker.html"><img src="./image/bubble16.jpg" style="margin-top:15px;"></a>






                <a href="friend-sticker.html">
                <div class="text-all">
                <div class="name-all">
                  친구 스티커 
                </div>
              
                <div class="name-under-all">
    
                <div class="price-all">
                  2,500원
                </div>
                </div>
                </div>
                </a>


                <a href="soft-cone-sticker.html">
                  <div class="text-all" style="margin-left:10px;">
                  <div class="name-all">
                    소프트 콘 스티커 
                  </div>
                
                  <div class="name-under-all">
      
                  <div class="price-all">
                    2,500원
                  </div>
                  </div>
                  </div>
                  </a>


                  <a href="water-gun-sticker.html">
                    <div class="text-all" style="margin-left:-10px;">
                    <div class="name-all">
                      물총 스티커 
                    </div>
                  
                    <div class="name-under-all">
        
                    <div class="price-all">
                      2,500원
                    </div>
                    </div>
                    </div>
                    </a>


                    <a href="photo-in-bear-sticker.html">
                      <div class="text-all" style="margin-left:10px;">
                      <div class="name-all">
                        사진 속 곰 스티커 
                      </div>
                    
                      <div class="name-under-all">
          
                      <div class="price-all">
                        2,500원
                      </div>
                      </div>
                      </div>
                      </a>

                      <div class="aloha">
                      <a href="aloha-sticker.html"">
                        <div class="text-all-r">
                        <div class="name-all">
                          알로하 스티커 
                        </div>
                      
                        <div class="name-under-all">
            
                        <div class="price-all">
                          2,500원
                        </div>
                        </div>
                        </div>
                        </a>
                      </div>




                <a href="umbrella-bear-sticker.html"><img src="./image/bubble15.jpg"></a>

                <a href="vacation-sticker.html"><img src="./image/bubble14.jpg"></a>

                <a href="ice-sticker.html"><img src="./image/bubble13.jpg"></a>

                <a href="wine-bear-sticker.html"><img src="./image/bubble12.jpg"></a>

                <a class="img-r" href="icecream-sticker-bubble.html"><img src="./image/bubble11.jpg"></a>
  




                <a href="umbrella-bear-sticker.html">
                  <div class="text-all">
                  <div class="name-all">
                    우산 곰 스티커 
                  </div>
                
                  <div class="name-under-all">
      
                  <div class="price-all">
                    2,500원
                  </div>
                  </div>
                  </div>
                  </a>
  
  
                  <a href="vacation-sticker.html">
                    <div class="text-all">
                    <div class="name-all">
                      바캉스 스티커 
                    </div>
                  
                    <div class="name-under-all">
        
                    <div class="price-all">
                      2,500원
                    </div>
                    </div>
                    </div>
                    </a>
  
  
                    <a href="ice-sticker.html">
                      <div class="text-all">
                      <div class="name-all">
                        얼음 스티커 
                      </div>
                    
                      <div class="name-under-all">
          
                      <div class="price-all">
                        2,500원
                      </div>
                      </div>
                      </div>
                      </a>
  
  
                      <a href="wine-bear-sticker.html">
                        <div class="text-all" style="margin-left:10px;">
                        <div class="name-all">
                          와인 곰 스티커 
                        </div>
                      
                        <div class="name-under-all">
            
                        <div class="price-all">
                          2,500원
                        </div>
                        </div>
                        </div>
                        </a>
  
                        <a href="icecream-sticker-bubble.html">
                          <div class="text-all-r" style="margin-left:0px;">
                          <div class="name-all">
                            아이스크림 스티커 
                          </div>
                        
                          <div class="name-under-all">
              
                          <div class="price-all">
                            2,500원
                          </div>
                          </div>
                          </div>
                          </a>






                          <a href="food-box-sticker.html"><img src="./image/bubble10.jpg"></a>

                          <a href="muffin-sticker.html"><img src="./image/bubble9.jpg"></a>
          
                          <a href="swimming-sticker.html"><img src="./image/bubble8.jpg"></a>
          
                          <a href="movie-sticker.html"><img src="./image/bubble7.jpg"></a>
          
                          <a class="img-r" href="angry-bear-sticker-bubble.html"><img src="./image/bubble6.jpg"></a>







                          <a href="food-box-sticker.html">
                            <div class="text-all">
                            <div class="name-all">
                              냉장고 스티커 
                            </div>
                          
                            <div class="name-under-all">
                
                            <div class="price-all">
                              2,500원
                            </div>
                            </div>
                            </div>
                            </a>
            
            
                            <a href="muffin-sticker.html">
                              <div class="text-all">
                              <div class="name-all">
                                머핀 스티커 
                              </div>
                            
                              <div class="name-under-all">
                  
                              <div class="price-all">
                                2,500원
                              </div>
                              </div>
                              </div>
                              </a>
            
            
                              <a href="swimming-sticker.html">
                                <div class="text-all" style="margin-left:10px;">
                                <div class="name-all">
                                  수영 스티커 
                                </div>
                              
                                <div class="name-under-all">
                    
                                <div class="price-all">
                                  2,500원
                                </div>
                                </div>
                                </div>
                                </a>
            
            
                                <a href="movie-sticker.html">
                                  <div class="text-all" style="margin-left:10px;">
                                  <div class="name-all">
                                    영화 스티커 
                                  </div>
                                
                                  <div class="name-under-all">
                      
                                  <div class="price-all">
                                    2,500원
                                  </div>
                                  </div>
                                  </div>
                                  </a>
            
                                  <a href="angry-bear-sticker-bubble.html">
                                    <div class="text-all-r" style="margin-left:10px;">
                                    <div class="name-all">
                                      화난 곰 스티커 
                                    </div>
                                  
                                    <div class="name-under-all">
                        
                                    <div class="price-all">
                                      2,500원
                                    </div>
                                    </div>
                                    </div>
                                    </a>


                                    



                          

                          <a href="memo-bear-sticker.html"><img src="./image/bubble5.jpg"></a>

                          <a href="bbi-bear-sticker.html"><img src="./image/bubble4.jpg"></a>
          
                          <a href="summer-sticker-bubble.html"><img src="./image/bubble3.jpg"></a>
          
                          <a href="water-play-sticker.html"><img src="./image/bubble2.jpg"></a>
          
                          <a class="img-r" href="record-sticker.html"><img src="./image/bubble1.jpg"></a>







                          <a href="memo-bear-sticker.html">
                            <div class="text-all">
                            <div class="name-all">
                              메모 곰 스티커 
                            </div>
                          
                            <div class="name-under-all">
                
                            <div class="price-all">
                              2,500원
                            </div>
                            </div>
                            </div>
                            </a>
            
            
                            <a href="bbi-bear-sticker.html">
                              <div class="text-all">
                              <div class="name-all">
                                삐진 곰 스티커 
                              </div>
                            
                              <div class="name-under-all">
                  
                              <div class="price-all">
                                2,500원
                              </div>
                              </div>
                              </div>
                              </a>
            
            
                              <a href="summer-sticker-bubble.html">
                                <div class="text-all">
                                <div class="name-all">
                                  여름 스티커 
                                </div>
                              
                                <div class="name-under-all">
                    
                                <div class="price-all">
                                  2,500원
                                </div>
                                </div>
                                </div>
                                </a>
            
            
                                <a href="water-play-sticker.html">
                                  <div class="text-all" style="margin-left:5px;">
                                  <div class="name-all">
                                    물놀이 스티커 
                                  </div>
                                
                                  <div class="name-under-all">
                      
                                  <div class="price-all">
                                    2,500원
                                  </div>
                                  </div>
                                  </div>
                                  </a>
            
                                  <a href="record-sticker.html">
                                    <div class="text-all-r" style="margin-left:0px;">
                                    <div class="name-all">
                                      레코드 스티커 
                                    </div>
                                  
                                    <div class="name-under-all">
                        
                                    <div class="price-all">
                                      2,500원
                                    </div>
                                    </div>
                                    </div>
                                    </a>




                          

                                    <a href="sweet-dessert-sticker.html"><img src="./image/sealsticker24.jpg"></a>

                                    <a href="bakery-bear-sticker.html"><img src="./image/sealsticker23.jpg"></a>
                    
                                    <a href="free-koala-sticker.html"><img src="./image/sealsticker22.jpg"></a>
                    
                                    <a href="swiss-koala-sticker.html"><img src="./image/sealsticker21.jpg"></a>
                    
                                    <a class="img-r" href="koala-police-sticker.html"><img src="./image/sealsticker20.jpg"></a>
          
          
          
          
          
          
                                    <a href="sweet-dessert-sticker.html">
                                      <div class="text-all">
                                      <div class="name-all">
                                        달콤한 디저트 스티커 
                                      </div>
                                    
                                      <div class="name-under-all">
                          
                                      <div class="price-all">
                                        2,500원
                                      </div>
                                      </div>
                                      </div>
                                      </a>
                      
                      
                                      <a href="bakery-bear-sticker.html">
                                        <div class="text-all" style="margin-left:-30px;">
                                        <div class="name-all">
                                          베이커리 곰 스티커 
                                        </div>
                                      
                                        <div class="name-under-all">
                            
                                        <div class="price-all">
                                          2,500원
                                        </div>
                                        </div>
                                        </div>
                                        </a>
                      
                      
                                        <a href="free-koala-sticker.html">
                                          <div class="text-all" style="margin-left:-20px;">
                                          <div class="name-all">
                                            한가한 코알라 스티커 
                                          </div>
                                        
                                          <div class="name-under-all">
                              
                                          <div class="price-all">
                                            2,500원
                                          </div>
                                          </div>
                                          </div>
                                          </a>
                      
                      
                                          <a href="swiss-koala-sticker.html">
                                            <div class="text-all" style="margin-left:-30px;">
                                            <div class="name-all">
                                              스위스 코알라 스티커 
                                            </div>
                                          
                                            <div class="name-under-all">
                                
                                            <div class="price-all">
                                              2,500원
                                            </div>
                                            </div>
                                            </div>
                                            </a>
                      
                                            <a href="koala-police-sticker.html">
                                              <div class="text-all-r" style="margin-left:-35px;">
                                              <div class="name-all">
                                               코알라 경찰 스티커 
                                              </div>
                                            
                                              <div class="name-under-all">
                                  
                                              <div class="price-all">
                                                2,500원
                                              </div>
                                              </div>
                                              </div>
                                              </a>




                          

                                              <a href="koala-company-sticker.html"><img src="./image/sealsticker19.jpg"></a>

                                              <a href="dinosaur-sticker.html"><img src="./image/sealsticker18.jpg"></a>
                              
                                              <a href="home-party-sticker.html"><img src="./image/sealsticker17.jpg"></a>
                              
                                              <a href="koala-travel-sticker.html"><img src="./image/sealsticker16.jpg"></a>
                              
                                              <a class="img-r" href="room-deco-sticker.html"><img src="./image/sealsticker15.jpg"></a>
                    
                    
                    
                    
                    
                    
                    
                                              <a href="koala-company-sticker.html">
                                                <div class="text-all">
                                                <div class="name-all">
                                                  코알라 회사 스티커 
                                                </div>
                                              
                                                <div class="name-under-all">
                                    
                                                <div class="price-all">
                                                  2,500원
                                                </div>
                                                </div>
                                                </div>
                                                </a>
                                
                                
                                                <a href="dinosaur-sticker.html">
                                                  <div class="text-all" style="margin-left:-20px;">
                                                  <div class="name-all">
                                                   공룡 스티커 
                                                  </div>
                                                
                                                  <div class="name-under-all">
                                      
                                                  <div class="price-all">
                                                    2,500원
                                                  </div>
                                                  </div>
                                                  </div>
                                                  </a>
                                
                                
                                                  <a href="home-party-sticker.html">
                                                    <div class="text-all" style="margin-left:10px;">
                                                    <div class="name-all">
                                                      홈 파티 스티커 
                                                    </div>
                                                  
                                                    <div class="name-under-all">
                                        
                                                    <div class="price-all">
                                                      2,500원
                                                    </div>
                                                    </div>
                                                    </div>
                                                    </a>
                                
                                
                                                    <a href="koala-travel-sticker.html">
                                                      <div class="text-all" style="margin-left:-5px;">
                                                      <div class="name-all">
                                                        코알라 여행 스티커 
                                                      </div>
                                                    
                                                      <div class="name-under-all">
                                          
                                                      <div class="price-all">
                                                        2,500원
                                                      </div>
                                                      </div>
                                                      </div>
                                                      </a>
                                
                                                      <a href="room-deco-sticker.html">
                                                        <div class="text-all-r">
                                                        <div class="name-all">
                                                          방 데코 스티커 
                                                        </div>
                                                      
                                                        <div class="name-under-all">
                                            
                                                        <div class="price-all">
                                                          2,500원
                                                        </div>
                                                        </div>
                                                        </div>
                                                        </a>




                          

                                                        <a href="watermelon-sticker.html"><img src="./image/sealsticker14.jpg"></a>

                                                        <a href="farmer-sticker.html"><img src="./image/sealsticker13.jpg"></a>
                                        
                                                        <a href="sky-rabbit-sticker.html"><img src="./image/sealsticker12.jpg"></a>
                                        
                                                        <a href="city-night-sticker.html"><img src="./image/sealsticker11.jpg"></a>
                                        
                                                        <a class="img-r" href="angry-bear-sticker-seal.html"><img src="./image/sealsticker10.jpg"></a>
                              
                              
                              
                              
                              
                              
                              
                                                        <a href="watermelon-sticker.html">
                                                          <div class="text-all">
                                                          <div class="name-all">
                                                            수박 스티커 
                                                          </div>
                                                        
                                                          <div class="name-under-all">
                                              
                                                          <div class="price-all">
                                                            2,500원
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </a>
                                          
                                          
                                                          <a href="farmer-sticker.html">
                                                            <div class="text-all" style="margin-left:10px;">
                                                            <div class="name-all">
                                                              농부 스티커 
                                                            </div>
                                                          
                                                            <div class="name-under-all">
                                                
                                                            <div class="price-all">
                                                              2,500원
                                                            </div>
                                                            </div>
                                                            </div>
                                                            </a>
                                          
                                          
                                                            <a href="sky-rabbit-sticker.html">
                                                              <div class="text-all" style="margin-left:10px;">
                                                              <div class="name-all">
                                                                하늘 토끼 스티커 
                                                              </div>
                                                            
                                                              <div class="name-under-all">
                                                  
                                                              <div class="price-all">
                                                                2,500원
                                                              </div>
                                                              </div>
                                                              </div>
                                                              </a>
                                          
                                          
                                                              <a href="city-night-sticker.html">
                                                                <div class="text-all" style="margin-left:-10px;">
                                                                <div class="name-all">
                                                                  도시의 밤 스티커 
                                                                </div>
                                                              
                                                                <div class="name-under-all">
                                                    
                                                                <div class="price-all">
                                                                  2,500원
                                                                </div>
                                                                </div>
                                                                </div>
                                                                </a>
                                          
                                                                <a href="angry-bear-sticker-seal.html">
                                                                  <div class="text-all-r" style="margin-left:-15px;">
                                                                  <div class="name-all">
                                                                    화난 곰 스티커 
                                                                  </div>
                                                                
                                                                  <div class="name-under-all">
                                                      
                                                                  <div class="price-all">
                                                                    2,500원
                                                                  </div>
                                                                  </div>
                                                                  </div>
                                                                  </a>

                                                                  


                          

                                                        <a href="summer-sticker-seal.html"><img src="./image/sealsticker9.jpg"></a>

                                                        <a href="bear-store-sticker.html"><img src="./image/sealsticker8.jpg"></a>
                                        
                                                        <a href="hot-escape-sticker.html"><img src="./image/sealsticker7.jpg"></a>
                                        
                                                        <a href="park-sticker.html"><img src="./image/sealsticker6.jpg"></a>
                                        
                                                        <a class="img-r" href="daily-bear-sticker.html"><img src="./image/sealsticker5.jpg"></a>
                              
                              
                              
                              
                              
                              
                              
                                                        <a href="summer-sticker-seal.html">
                                                          <div class="text-all">
                                                          <div class="name-all">
                                                            썸머 스티커 
                                                          </div>
                                                        
                                                          <div class="name-under-all">
                                              
                                                          <div class="price-all">
                                                            2,500원
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </a>
                                          
                                          
                                                          <a href="bear-store-sticker.html">
                                                            <div class="text-all" style="margin-left:10px;">
                                                            <div class="name-all">
                                                              리곰문구 스티커 
                                                            </div>
                                                          
                                                            <div class="name-under-all">
                                                
                                                            <div class="price-all">
                                                              2,500원
                                                            </div>
                                                            </div>
                                                            </div>
                                                            </a>
                                          
                                          
                                                            <a href="hot-escape-sticker.html">
                                                              <div class="text-all" style="margin-left:-10px;">
                                                              <div class="name-all">
                                                                더위탈출 스티커 
                                                              </div>
                                                            
                                                              <div class="name-under-all">
                                                  
                                                              <div class="price-all">
                                                                2,500원
                                                              </div>
                                                              </div>
                                                              </div>
                                                              </a>
                                          
                                          
                                                              <a href="park-sticker.html">
                                                                <div class="text-all" style="margin-left:-10px;">
                                                                <div class="name-all">
                                                                  공원 스티커 
                                                                </div>
                                                              
                                                                <div class="name-under-all">
                                                    
                                                                <div class="price-all">
                                                                  2,500원
                                                                </div>
                                                                </div>
                                                                </div>
                                                                </a>
                                          
                                                                <a href="daily-bear-sticker.html">
                                                                  <div class="text-all-r" style="margin-left:15px;">
                                                                  <div class="name-all">
                                                                  데일리 곰 스티커 
                                                                  </div>
                                                                
                                                                  <div class="name-under-all">
                                                      
                                                                  <div class="price-all">
                                                                    2,500원
                                                                  </div>
                                                                  </div>
                                                                  </div>
                                                                  </a>

                                                                  


                          

                                                        <a href="night-deco-sticker.html"><img src="./image/sealsticker4.jpg"></a>

                                                        <a href="crayon-sticker.html"><img src="./image/sealsticker3.jpg"></a>
                                        
                                                        <a href="icecream-sticker-seal.html"><img src="./image/sealsticker2.jpg"></a>
                                        
                                                        <a href="snack-bar-sticker.html"><img src="./image/sealsticker1.jpg"></a>
                                        
                                                       
                              
                              
                              
                              
                              
                              
                                                        <a href="night-deco-sticker.html">
                                                          <div class="text-all">
                                                          <div class="name-all">
                                                            밤 데코 스티커 
                                                          </div>
                                                        
                                                          <div class="name-under-all">
                                              
                                                          <div class="price-all">
                                                            2,500원
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </a>
                                          
                                          
                                                          <a href="crayon-sticker.html">
                                                            <div class="text-all">
                                                            <div class="name-all">
                                                              크레용 스티커 
                                                            </div>
                                                          
                                                            <div class="name-under-all">
                                                
                                                            <div class="price-all">
                                                              2,500원
                                                            </div>
                                                            </div>
                                                            </div>
                                                            </a>
                                          
                                          
                                                            <a href="icecream-sticker-seal.html">
                                                              <div class="text-all">
                                                              <div class="name-all">
                                                                아이스크림 스티커 
                                                              </div>
                                                            
                                                              <div class="name-under-all">
                                                  
                                                              <div class="price-all">
                                                                2,500원
                                                              </div>
                                                              </div>
                                                              </div>
                                                              </a>
                                          
                                          
                                                              <a href="snack-bar-sticker.html">
                                                                <div class="text-all" style="margin-left:-20px;">
                                                                <div class="name-all">
                                                                  분식 스티커 
                                                                </div>
                                                              
                                                                <div class="name-under-all">
                                                    
                                                                <div class="price-all">
                                                                  2,500원
                                                                </div>
                                                                </div>
                                                                </div>
                                                                </a>
                                          
            </div>
          </div>
          <!--전체 상품 끝-->

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