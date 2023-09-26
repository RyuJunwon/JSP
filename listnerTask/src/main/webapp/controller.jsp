<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,model.BoardVO" %>
    <% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bDAO" class="model.BoardDAO" />
<jsp:useBean id="bVO" class="model.BoardVO" />
<jsp:setProperty property="*" name="bVO" />
<%
	String action=request.getParameter("action");

	// 로그 작성 방법
	System.out.println(" 로그 : controller.jsp");
	System.out.println(" action: " + action);
	System.out.println(" bVO: " + bVO);
	
	if(action.equals("main")){
		ArrayList<BoardVO> datas=bDAO.selectAll(null);
		request.setAttribute("datas", datas);
		request.getRequestDispatcher("b_main.jsp").forward(request, response);
		// ㄴ> forward는 jsp action 태그를 자바로 작성한 것임.
	}
	else if(action.equals("signupPage")) {
		response.sendRedirect("e_signup.jsp");
	}
	else if(action.equals("board")){
		bVO=bDAO.selectOne(bVO);
		if(bVO!=null){
			request.setAttribute("data", bVO);
			request.getRequestDispatcher("d_board.jsp").forward(request, response);
		} else {
			out.println("<script> alert('잘못된 접근입니다. 확인 후 다시 입력해주세요.'); location.href = 'controller.jsp?action=main' </script>");
		}
	}
	else if(action.equals("updatewrite")) {
		if(!bDAO.update(bVO)) {
			out.println("<script> alert('게시글 변경 실패..'); location.href = 'controller.jsp?action=main' </script>");
		}
		else {
			out.println("<script> alert('게시글 변경 성공!'); location.href = 'controller.jsp?action=main' </script>");
		}
	}
	else if(action.equals("updatedelete")) {
		if(!bDAO.delete(bVO)) {
			out.println("<script> alert('게시글 삭제 실패..'); location.href = 'controller.jsp?action=main' </script>");
		}
		else {
			out.println("<script> alert('게시글 삭제 성공!'); location.href = 'controller.jsp?action=main' </script>");
		}
	}
	
	else if(action.equals("mypagePage")) {
		response.sendRedirect("mypage.jsp");
	}
	else if(action.equals("deletembPage")) {
		response.sendRedirect("h_deletemb.jsp");
	}
	else if(action.equals("logout")){
		session.removeAttribute("mid");
		response.sendRedirect("controller.jsp?action=main");
	}
	else if(action.equals("writePage")) {
		response.sendRedirect("c_insertBoard.jsp");
	}
	else if(action.equals("write")) {
		if(!bDAO.insert(bVO)) {
			out.println("<script> alert('글 작성 실패'); location.href = 'controller.jsp?action=main' </script>");
		}
		else {
%>
			<script>
				alert('글 작성 성공!');
				location.href = 'controller.jsp?action=main';
			</script>
<%
		}
	}
	else { // 이상한 값이 들어갔을 경우 [ 예외처리 ]
			// jsp?action=board&num=6
		out.println("<script>alert('action 파라미터의 값을 확인해주세요!');history.go(-1);</script>");
	}
%>