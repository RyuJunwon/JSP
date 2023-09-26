<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class = "vo.ProductDAO" />
<jsp:useBean id="pVO" class = "vo.ProductVO" />
<jsp:setProperty property="*" name="pVO" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
	
</script>


	<%
	
	String member = request.getParameter("mid");
	
	%>

	<h1><%= member %>님, 안녕하세요 ! :D </h1>
	<form action="test11.jsp">
		상품 <select name="product">
			<option>티셔츠</option>
			<option>목도리</option>
			<option>청바지</option>
			<option>운동화</option>
			<option>가방</option>
		</select> 
		<input type="submit" value="장바구니에 추가하기">
	</form>
	<hr>
	<a href="test12.jsp">최종 결제하기</a>
</body>
</html>