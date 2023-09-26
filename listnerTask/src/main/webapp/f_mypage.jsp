<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 변경</title>
</head>
<body>

<form name='form' action="controller.jsp" method="post">
	<input type="hidden" name="action" value="updateMember">
	아이디 <input type="text" name="mid" readonly value='${ mid }'> <br>
	비밀번호 <input type="password" name="mpw" value='${ mpw }'> <br>
	이름 <input type="text" name="name" value='${ name }'> <br>
	<input type = "submit" value = "회원 정보 수정">
</form>

<form action="controller.jsp" method = "post">
	<input type = "hidden" name = "action" value = "deletetrue">
	<input type = "submit" value = "회원 탈퇴">
</form>


<form action = "controller.jsp">
	<input type = "hidden" name = "action" value = "main">
	<input type = "submit" value = "메인">
</form>
	
</body>
</html>