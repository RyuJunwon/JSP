<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성</title>
</head>
<body>

<form action = "controller.jsp" method = "post">
		<input type = "hidden" name = "action" value = "write">
		제목 : <input type = "text" name = "title" placeholder = "제목을 작성하세요.">
		글 : <input type = "text" name = "content" placeholder = "글을 작성하세요.">
		<input type = "hidden" name = "writer" value = "${ mid }" >
		<input type = "submit" value = "게시글 작성 완료">
</form>

<br>

<a href = "controller.jsp?action=main">메인으로 돌아가기</a>

</body>
</html>