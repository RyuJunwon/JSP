<%@page import="model.TeaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
	<jsp:useBean id="pDAO" class="model.TeaDAO" />
<jsp:useBean id="pVO" class="model.TeaVO" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String member = request.getParameter("mid");
		/* if(session.getAttribute("member") == null) {
			session.setAttribute("member", member);
		} */
	%>
	
	<h1>결제 페이지</h1>
	<%=session.getAttribute("member")%> 님이 결제 하신 상품 목록입니다.

	<ul>
		<%
		ArrayList<TeaVO> datas = (ArrayList<TeaVO>) session.getAttribute("datas");
				if (datas != null) {
			int total = 0;
			for (TeaVO v : datas) {
				
				out.println("<li>" + v + "</li>");
				total += v.getPrice();
			}
			out.println("<h5>총 가격은 " + total + "원 입니다.</h5>");
				} else {
			out.println("장바구니가 비어있습니다.");
				}
		%>
	</ul>


</body>
</html>