<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
   <link rel="stylesheet" href="./css/basic.css">
   <link rel="stylesheet" href="./css/login.css">
   <link href="${pageContext.request.contextPath}/css/basic.css">
   <link href="${pageContext.request.contextPath}/css/login.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
 
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:include page="./header.jsp"/>


    <!--  중간  박스     -->
 <div class="midbox">
      
      <div class="login-text">로그인</div>

      <br>

      
<form action="Login" method = "post" name = "login">
      <div class="id-password">
      <input type="text" class="id-password-box" name="id" placeholder="ID">
      <br>
      <input type="password" class="id-password-box" name="password" placeholder="PW">
      
      <div class="id-find"><a href="idFind.jsp">아이디/</a><a href="passwordFind.jsp">비밀번호 찾기</a></div>
</div>
      <input type="submit" value = "로그인" class="login-button">
</form>
      <div class="join-box">
        <div class="join-text">
          아직 회원이 아니신가요?<br>
          고객님을 위한 다양한 상품이 준비되어 있습니다.
        </div>
      <button class="join-button"><a href="join.jsp">회원가입</a></button>
      </div>
      
    
    </div>

    <hr class="line">

   
 <jsp:include page="./footer.jsp"/>
</body>
</html>