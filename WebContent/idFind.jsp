<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STICKER STORE</title>

    <link rel="stylesheet" href="./css/idFind.css?after " >
 <link href="${pageContext.request.contextPath}/css/idFind.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
  
    <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">


</head>
<body>

    <!--전체 div 시작-->
    <div class="box-all">

   <jsp:include page="header.jsp"/>

    </div>
    <!--header-index 끝-->


        <!--middle-index 시작-->
        <div class="middle-index">


          <div class="midbox">
      
           <div class="id-find-text">아이디 찾기</div>
      
            <HR width="100%" align="right" style="margin-bottom:30px; margin-top:30px;  background-color:rgb(185, 175, 163); height:1px; border:none" />
      
            
      
           <form action = "processIdFind.jsp" method="post" name="idFind">
             <input type="text" class="name-box" name="name" placeholder="     이름">
           
            

            <input type="text" class="email-box" name="email" placeholder="     이메일   ">@
            <select name = "email2">
            <option>naver.com</option>
            <option>daum.net</optin>
            <option>gmail.com</option>
            <option>nate.com</option>
            <option>yahoo.co.kr</option>
            </select>
      
			<input id="button" type="submit" value = "확인">
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
</body>
</html>