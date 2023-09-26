<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<form action = "controller.jsp" post = "method">
	<input type = "hidden" name = "action" value = "mypage">
	<input type = "hidden" name = "mid" value = "<%= session.getAttribute("mid") %>">
	비밀번호를 확인하겠습니다. <br>
	비밀번호를 입력하세요. <br>
	<input type = "password" name = "mpw">
	<input type = "submit" value = "확인">
</form>
</body>
</html>