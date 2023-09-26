<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String member = request.getParameter("mid");
	if(session.getAttribute("member") == null) {
		session.setAttribute("member", member);
	}
	
	%>
	
	<h1>결제 페이지</h1>
	<%= session.getAttribute("member") %> 님이 결제 하신 상품 목록입니다.



	<ul>
		<%
		ArrayList<String> datas = (ArrayList<String>) session.getAttribute("datas");
		if (datas != null) {
			
			for (String v : datas) {
				out.println("<li>" + v + "</li>");
			}
		} else {
			out.println("장바구니가 비어있습니다.");
		}
		%>


	</ul>


</body>
</html>