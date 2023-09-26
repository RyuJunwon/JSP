<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
</head>
<body>

<%
	BoardVO data=(BoardVO)request.getAttribute("data");
%>
글 번호: <%=data.getNum()%> <br>
글 제목: <%=data.getTitle()%> <br>
글 내용: <%=data.getContent()%> <br>
작성자: <%=data.getWriter()%> <br>

<br>

<%
	if(data.getWriter().equals((String)session.getAttribute("mid"))) {
%>

<form action = "controller.jsp?action=updatewrite&num=<%= data.getNum() %>" method = "post">
		제목 : <input type = "text" name = "title" value = "<%= data.getTitle() %>"> <br> <br>
		글 : <input type = "text" name = "content" value = "<%= data.getContent() %>"> <br> <br>
		<input type = "hidden" name = "writer" value = "<%= session.getAttribute("mid") %>" >
		<input type = "submit" value = "게시글 수정">
</form>
<a href = "controller.jsp?action=updatedelete&num=<%= data.getNum() %>">글 삭제하기</a>
<%
	}
%>
<a href = "controller.jsp?action=main">메인으로 돌아가기</a>
</body>
</html>