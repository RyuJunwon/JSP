<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 변경</title>
</head>
<body>

	<form action = "controller.jsp" method = "post">
		<input type = "hidden" name = "action" value = "updatewrite">
		
		제목 : <input type = "text" name = "title" placeholder = "제목을 작성하세요."> <br>
		글 : <input type = "text" name = "content" placeholder = "글을 작성하세요.">
		<input type = "hidden" name = "writer" value = "<%= session.getAttribute("data") %>" >
		<input type = "submit" value = "게시글 수정하기">
	</form>
	
	<br>
	
	<a href = "controller.jsp?action=main">메인으로 돌아가기</a>

</body>
</html>