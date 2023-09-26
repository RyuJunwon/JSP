<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>

<a href = "controller.jsp?action=deletetrue&mid=<%= session.getAttribute("mid")%>">회원 탈퇴하기</a>
<a href = "controller.jsp?action=main">회원 탈퇴하지 않기</a>

</body>
</html>