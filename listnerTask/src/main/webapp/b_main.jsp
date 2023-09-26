<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.BoardVO,java.util.ArrayList" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> <!-- 지시어를 빼곤 자바가 한개도 없어야 한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
</head>
<body>
<!-- VIEW 에서의 모든 요청은 Controller로 간다는 것!! 중요!! -->
	
	<c:if test="${ empty mid }" >
		<a href = "controller.jsp?action=signupPage">회원가입</a>
		<form action="controller.jsp" method="post">
			<input type="hidden" name="action" value="login" > 
			아이디: <input type="text" name="mid" placeholder = "아이디를 입력하세요" > <br> <br>
			비밀번호: <input type="password" name="mpw" placeholder = "비밀번호를 입력하세요" > <br>
			<input type="submit" value="로그인">
		</form>
	</c:if>

	<c:if test="${ not empty mid }"> 
		<a href='controller.jsp?action=mypagePage'> ${ mid }님, 마이페이지</a> 
		<a href='controller.jsp?action=logout'>로그아웃</a>
	</c:if>

<hr>

<table border="1">
	<tr>
		<th>글 번호</th><th>글 제목</th><th>작성자</th>
	</tr>
	
	<c:forEach var = "v" items = "${ datas }"> <!-- xxx.getAttribute(), request.getParameter()는 컨트롤러가 주는 데이터  -->
	
	<tr>
		<td><a href="controller.jsp?action=board&num=${ v.num }">${ v.num }</a></td>
		<td>${ v.title }</td>
		<td>${ v.writer }</td>
	</tr>
	</c:forEach>
</table>

<br>

<c:if test="${ not empty mid }">
	<a href = "controller.jsp?action=writePage">게시글 작성</a>
</c:if>

</body>
</html>