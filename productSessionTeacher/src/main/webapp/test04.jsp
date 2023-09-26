<%@page import="java.util.ArrayList"%>
<%@page import="model.TeaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="pVO" class = "model.TeaVO"></jsp:useBean>
    <jsp:useBean id="pDAO" class = "model.TeaDAO"></jsp:useBean>
    <jsp:setProperty property = "*" name = "pVO" />

<%
// 상품을 받아와서,
	String product = request.getParameter("product");
	// "ProductVO [PK=" + PK + ", name=" + name + ", price=" + price + "]" 이게 온다는 뜻
	// 즉, String 으로 오는 값을 객체 Product 로 바꿔야 함
	// 위의 로직은 무조건 selectOne()을 사용한다.
	
	TeaVO data = pDAO.selectOne(pVO);
	
	ArrayList<TeaVO> cart = (ArrayList<TeaVO>)session.getAttribute("cart");
	
	if(cart == null) {
		cart = new ArrayList<TeaVO>();
		session.setAttribute("cart", cart);
	}
	
	cart.add(data);
	
	// 그걸 장바구니에 추가하고,
	
	// 혹시 장바구니가 없으면 ?
	// 만들어서 넣으면 됨.
%>

<script>
	alert('<%= data.getName() %> 이(가) 추가 되었습니다!');
</script>