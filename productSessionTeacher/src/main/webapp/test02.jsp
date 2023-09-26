<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mDAO" class = "model.MemberDAO" />
<jsp:useBean id="mVO" class = "model.MemberVO" />
<jsp:setProperty property = "*" name = "mVO" />
<%
	// request.getParameter 내장 객체 사용
	String mid = request.getParameter("mid");
	String mpw = request.getParameter("mpw");
	
	// out 내장객체 사용
	
	
	/* 재활용 하는 방법 */
	mVO = mDAO.selectOne(mVO);
	
	if(mVO == null) {// 이 mid와 mpw를 가진 회원이 있니 ?
		out.println("<script>alert('로그인 실패..'); history.go(-1);</script>" ); // 없어도 가긴할건데, 로그인 실패!를 안내해줄거야
		// history.go(-1) 쓰는 이유는 서버에 기록 남기기 위해서 사용
	}
	else {
		// 있으면 test01.jsp 로 가고
		
	}
	session.setAttribute("name", mid);
	/* 아이디를 가져가야 하는데 그걸 '세션'에 저장을 했기 때문에 따로 가져갈 필요가 없다. (신경쓰지 않아도 된다.) */
	
	
	/* 따라서 내가 들고 갈 것이 없기 때문에 유지할 필요가 없는 sendRedirect()를 사용한다. */
	response.sendRedirect("test01.jsp");
	
%>