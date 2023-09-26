<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList" %>

<!-- 화면에 보여줄 필요가 없기 때문에 html 포맷이 필요 없음.(지워도 됨) -->  

<%
// ****** 중 요 ******
// 장바구니, 로그인 유지 여부, 광고 띄우지 않기 설정 등
// 서버가 변경되어도 '브라우저가 유지되고 있었다면 설정이 유지 되어야 하는 상태'에 있는 데이터들을
// "세션(session)"으로 관리한다 !!
// [ 세 션 특 징 ]
// 일정 시간이 흐르면 연결이 해제된다.


	// 현재 한글 데이터 전송중 --> 인코딩 필수로 해줘야 함
	request.setCharacterEncoding("UTF-8");
	
	ArrayList<String> datas = (ArrayList<String>)session.getAttribute("datas");
	
	// 사용자가 product 라는 이름의 파라미터를 전송할 예정
	String product = request.getParameter("product");
	
	// 전달 받은 상품을 "장바구니" 에 추가
	// 장바구니를 맨 처음 만드는 경우에는 새로 new 해줘야 하고
	if(datas == null) { // datas가 없니 ?
		datas = new ArrayList<String>();
		session.setAttribute("datas", datas);
	}
	// 기존 장바구니가 있는 경우에는 .add() 해줘야 함.
	datas.add(product);
	
	// 추가 완료되면 다시 test10.jsp 로 이동
%>
	
 <script>
 	alert('<%= product %> 이(가) 장바구니에 추가되었습니다! :D');
 	history.go(-1);
 </script>