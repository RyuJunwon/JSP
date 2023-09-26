<%@page import="model.TeaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="model.TeaDAO" />
<jsp:useBean id="pVO" class="model.TeaVO" />
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

	<h1><%=member%>님, 안녕하세요 ! :D
	</h1>
	<form action="cart.jsp">
		<select name = "product">
			<%
			for (TeaVO v : pDAO.selectAll(null)) {
					out.println("<option value = '" + v.getPK() + "'> " + v + "</option>"); // 이름 가격
				}
			%>
		</select> 
		<input type="submit" value="장바구니에 추가하기">
	</form>
	<hr>
	<a href="sum.jsp">최종 결제하기</a>
</body>
</html>