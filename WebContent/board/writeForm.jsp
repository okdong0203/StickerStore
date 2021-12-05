<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   String name = (String) request.getAttribute("name");
   
%>
<html>
<head>
<title>Board</title>
</head>
<script type="text/javascript">
   function checkForm() {
      if (!document.newWrite.name.value) {
         alert("성명을 입력하세요.");
         return false;
      }
      if (!document.newWrite.subject.value) {
         alert("제목을 입력하세요.");
         return false;
      }
      if (!document.newWrite.content.value) {
         alert("내용을 입력하세요.");
         return false;
      }      
   }
</script>
<body>
   <jsp:include page="../header.jsp" />
   <div>
      <div >
         <h1>게시판</h1>
      </div>
   </div>

   <div>

      <form name="newWrite" action="./BoardWriteAction.do"
          method="post" onsubmit="return checkForm()">
         <input name="id" type="hidden" value="${sessionId}">
         <div >
            <label >성명</label>
            <div >
               <input name="name" type="text" value="<%=name %>" placeholder="name">
            </div>
         </div>
         <div >
            <label >제목</label>
            <div >

               <input name="subject" type="text" placeholder="subject">
            </div>
         </div>
         <div>
            <label  >내용</label>
            <div >
               <textarea name="content" cols="50" rows="5" placeholder="content"></textarea>
            </div>
         </div>
         <div>
            <div >
             <input type="submit" value="등록 ">            
                <input type="reset" value="취소 ">
            </div>
         </div>
      </form>
      <hr>
   </div>
   <jsp:include page="../footer.jsp" />
</body>
</html>