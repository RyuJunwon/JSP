<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="controller.jsp" method = "post">
	<input type = "hidden" name = "action" value = "signup">
	아이디: <input type = "text" name = "mid" placeholder = "사용하실 아이디 입력" required>
	비밀번호: <input type = "password" name = "mpw" placeholder = "사용하실 비밀번호 입력" required>
	이름: <input type = "text" name = "name" placeholder = "사용하실 이름 입력" required>
	<input type = "submit" value = "회원가입">
</form>

<br>

	<form action = "controller.jsp">
		<input type = "hidden" name = "action" value = "main">
		<input type = "submit" value = "메인">
	</form>

</body>
</html>