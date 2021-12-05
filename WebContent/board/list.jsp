<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="java.util.*" %>
<%@ page import="mvc.model.*" %> 
<%@ page contentType="text/html; charset=UTF-8"%>
<%
   String sessionId = (String) session.getAttribute("sessionId");
   List boardList = (List) request.getAttribute("boardlist");
   int total_record = ((Integer) request.getAttribute("total_record")).intValue();
   int pageNum = ((Integer) request.getAttribute("pageNum")).intValue();
   int total_page = ((Integer) request.getAttribute("total_page")).intValue();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://unpkg.com/ress/dist/ress.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link href="../css/basic.css" rel="stylesheet">
<link href="../css/container.css" rel="stylesheet">
<style>
.form-container{width:100%; margin-bottom:30px;line-height:40px;}
.row{height:40px; line-height:40px;}

.first-column { display:inline-block; width:80px; height:40px;}
input{border:1px solid black;}
textarea{border:1px solid black;}
.row-sub {text-align : center;}
.row-submit{border:1px solid black; width:80px; height:40px; line-height:40px; }
</style>
</head>
<body>
   <jsp:include page="../header.jsp" />
   <div class="container">
         <h1>게 시 판</h1>
   </div>
    <div>
       <form action='<c:url value="./BoardListAction.do" />'  method="post" name="post">
          <div><span>전체 <%=total_record%>건</span></div>
          <table border="1">
             <tr>
                <th>번호</th>             
                <th>제목</th>             
                <th>작성일</th>             
                <th>조회</th>             
                <th>글쓴이</th>
                <%
                   for(int i=0; i<boardList.size(); i++){
                      BoardDTO notice = (BoardDTO)boardList.get(i);
                %>             
              </tr>
              <tr>
                     <td><%=notice.getNum()%></td>
               <td><a href="./BoardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum%>"><%=notice.getSubject()%></a></td>
               <td><%=notice.getRegist_day()%></td>
               <td><%=notice.getHit()%></td>
               <td><%=notice.getName()%></td>
              </tr>
              <%
                 }
              %>
          
          </table>
        </div>
                 <div align="center">
            <c:set var="pageNum" value="<%=pageNum%>" />
            <c:forEach var="i" begin="1" end="<%=total_page%>">
               <a href="<c:url value="./BoardListAction.do?pageNum=${i}" /> ">
                  <c:choose>
                     <c:when test="${pageNum==i}">
                        <b> [${i}]</b>
                     </c:when>
                     <c:otherwise>
                        <b> [${i}]</b>

                     </c:otherwise>
                  </c:choose>
               </a>
            </c:forEach>
         </div>
         <div align="left">
            <table>
               <tr>
                  <td width="100%" align="left">&nbsp;&nbsp; 
                  <select name="items" class="txt">
                        <option value="subject">제목에서</option>
                        <option value="content">본문에서</option>
                        <option value="name">글쓴이에서</option>
                  </select> <input name="text" type="text" /> <input type="submit" id="btnAdd" class="btn btn-primary " value="검색 " />
                  </td>
                  <td width="100%" align="right">
                     <a href="#" onclick="checkForm(); return false;" class="btn btn-primary">&laquo;글쓰기</a>
                  </td>
               </tr>
            </table>
         </div>
         </form>
    </div>




    <hr/>
   <jsp:include page="../footer.jsp" />
</body>
</html>