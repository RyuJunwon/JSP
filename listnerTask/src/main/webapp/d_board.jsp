<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.BoardVO" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
</head>
<body>

	글 번호: ${ data.num } <br>
	글 제목: ${ data.title } <br>
	글 내용: ${ data.content } <br>
	작성자: ${ data.writer } <br>

<br>

<c:if test="${ data.writer eq sessionScope.mid }">
	<form action = "controller.jsp?action=updatewrite&num=${ data.num }" method = "post">
		제목 : <input type = "text" name = "title" value = "${ data.title }"> <br> <br>
		글 : <input type = "text" name = "content" value = "${ data.content }"> <br> <br>
		<input type = "hidden" name = "writer" value = "${ data.writer }" > <br>
		<input type = "submit" value = "게시글 수정">
	</form>
	<form action = "controller.jsp?action=updatedelete&num=${ data.num }" method = "post">
		<input type = "submit" value = "게시글 삭제">
	</form>
	<form action = "controller.jsp">
		<input type = "hidden" name = "action" value = "main">
		<input type = "submit" value = "메인">
	</form>
	
	
</c:if>

</body>
</html>