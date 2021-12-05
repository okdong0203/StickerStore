<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복 확인</title>
<style>
h3{
text-align: center;
}
#id{
margin-left: 60px;
}
 #submit{
        background-color:black;
        width:70px;
        height:30px;
        color: white;
        border-radius: 5px;
        margin-top:20px;
        margin-left: 100px;
        font-weight: 900;
    }
</style>
</head>
<body>
<h3>아이디 중복확인</h3>
<form method="post" action="idCheck.jsp" name="idCheck">
<div id="id">
아이디 : <input type="text" name="id" maxlength="10">
<input type = "submit" value="중복확인" id="submit">
</div>
</form>
</div>
</body>
</html>