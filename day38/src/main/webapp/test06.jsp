<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 액션</title>
</head>
<body>
	<!-- 데이터를 유지해야 되면 jsp:forward 사용 -->
	<!-- 데이터를 유지하지 않아도 된다면 response.sendRedirect() 를 사용한다. -->
	
	<jsp:forward page="test08.jsp">
		<jsp:param value = "12345" name = "test" />
	</jsp:forward>
	<!-- forward 액션 태그를 활용하면
	처음에 사용자가 전송했던 데이터들이 유지됨.
	URL이 변경되지 않음 
	위의 것은 새로운 요청이 된 것이 아니라 
	새로운 요청이 추가된 처럼 동작한다는 뜻. -->

</body>
</html>