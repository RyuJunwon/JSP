<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.TeaVO,java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
int total = 0;
%>

<h1><%=session.getAttribute("name")%>님이 구매한 상품들입니다.</h1>
<hr>
<ol>
<%
ArrayList<TeaVO> cart=(ArrayList<TeaVO>)session.getAttribute("cart");
	if(cart == null) {
%>
		<h2>카트가 비어있습니다.</h2>
		<%
		}

			for(TeaVO v:cart){
				out.println("<li>" + v + "</li>");
				total += v.getPrice();
			}
		%>
</ol>
<h2>총 금액은 <%= total %>원 입니다.</h2>



<hr>
<a href="test01.jsp">메인으로 돌아가기</a>

</body>
</html>