<%@page import="com.sticker.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.sticker.dao.MemberDAO"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복 체크</title>
<script type="text/javascript">
function apply(id){
	opener.document.joinMember.id.value=id;
	window.close();
}
</script>
<style>
.box{
text-align: center;
}	
a{
border: 1px solid #FADEC5;
border-radius : 10px;
background: #FADEC5;
color: black;
font-weight: 800px;
}
#a{
margin-left:200px;
}
#b{
margin-left: 140px;
}
</style>
</head>
<body>
    <%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    boolean check= member.checkId(id);
    
    out.println("<div class=box><h3>입력 ID : <b>" + id + "</h3></div></b>");
    
    if(check){
    	out.println("<div class=box>사용 가능한 아이디 입니다.</div><br/>");
    	out.println("<a id=a href='javascript:apply(\"" + id + "\")'>적용</a>");
    }else {
    	out.println("<div class=box>중복된 아이디 입니다.<br/></div>");
    }
%>
    <hr/>

<a id="b" href="javascript:history.back()">다시시도</a> &nbsp; &nbsp;
 <a href="javascript:window.close()">창닫기</a>



</body>
</html>