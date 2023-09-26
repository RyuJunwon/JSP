<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 application</title>
</head>
<body>

<%
	application.setAttribute("memberName", "홍길동");

	application.setAttribute("cnt", 0); // 방문자 수 (최초 방문자 수는 0으로 설정)

%>

<a href = "test02.jsp">방문자 수 확인하기</a>

</body>
</html>