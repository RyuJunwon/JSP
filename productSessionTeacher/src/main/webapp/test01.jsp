<%@page import="model.TeaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = java.util.ArrayList %>
<jsp:useBean id="pDAO" class = "model.TeaDAO" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="header">
<%
if(session.getAttribute("name") == null) { // 너 지금 로그인 안되어 있지 ? >> 그럼 로그인 해
%>
		<form action="test02.jsp" method = "post">
			아이디 <input type="text" name="mid"> <br>
			비밀번호 <input type="text" name="mpw"> <br>
			<input type="submit" value="로그인">
		</form>
<%
}
	else {
%>			
		
		<%=session.getAttribute("name")%>님, 안녕하세요 ! :D <a href="test03.jsp">로그아웃</a>
<%
}
%>

	</div>

	<hr>

	<div id = "content">
		<form action = "">
			상품 선택 <select name = "product">
<%
ArrayList<TeaVO> datas = pDAO.selectAll(null);
				for(TeaVO v: datas) {
					out.println("<option value ='" + v.getPK() + "'>'" + v + "'</option>");
				}
%>
					</select>
					<input type = "submit" value = "장바구니에 추가하기">
		</form>
	
	</div>

</body>
</html>