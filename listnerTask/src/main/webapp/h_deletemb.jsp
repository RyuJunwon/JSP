<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>

	<form action = "controller.jsp">
		<input type = "hidden" name = "action" value = "deletetrue&mid=${ sessionScope.mid }">
		<input type = "submit" value = "회원 탈퇴하기">
	</form>
	
		<form action = "controller.jsp">
		<input type = "hidden" name = "action" value = "main">
		<input type = "submit" value = "회원 탈퇴하기">
	</form>


</body>
</html>