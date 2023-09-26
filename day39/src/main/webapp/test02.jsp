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
	int cnt = (Integer)application.getAttribute("cnt");
	cnt++;
	application.setAttribute("cnt", cnt);
%>


Today <%= cnt %>


</body>
</html>