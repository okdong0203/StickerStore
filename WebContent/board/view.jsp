<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="mvc.model.BoardDTO"%>

<%
   BoardDTO notice = (BoardDTO) request.getAttribute("board");
   int num = ((Integer) request.getAttribute("num")).intValue();
   int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>
<html>
<head>

<title>Board</title>
</head>
<body>
   <jsp:include page="../header.jsp" />
   <div>
      <div >
         <h1>게시판</h1>
      </div>
   </div>

   <div>
      <form name="newUpdate" action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"  method="post">
         <div>
            <label  >성명</label>
            <div>
               <input name="name" value="<%=notice.getName()%>">
            </div>
         </div>
         <div>
            <label >제목</label>
            <div >
               <input name="subject" value="<%=notice.getSubject()%>" >
            </div>
         </div>
         <div>
            <label >내용</label>
            <div >
               <textarea name="content" cols="50" rows="5"> <%=notice.getContent()%></textarea>
            </div>
         </div>
         <div >
            <div >
               <c:set var="userId" value="<%=notice.getId()%>" />
               <c:if test="${sessionId==userId}">
                  <p>
                     <a   href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"> 삭제</a> 
                     <input type="submit" value="수정 ">
               </c:if>
               <a href="./BoardListAction.do?pageNum=<%=nowpage%>"> 목록</a>
            </div>
         </div>
      </form>
      <hr>
   </div>
   <jsp:include page="../footer.jsp" />
</body>
</html>