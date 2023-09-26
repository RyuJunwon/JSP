package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardVO;

public class BoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO bDAO=new BoardDAO();
		BoardVO bVO=new BoardVO();
		bVO.setNum(Integer.parseInt(request.getParameter("num")));
		bVO=bDAO.selectOne(bVO);
		if(bVO!=null){ // 없는 데이터를 보려하거나 CUD를 실패 했을 경우 forward를 null인 상태로 보냄
			request.setAttribute("data", bVO);
			
		}
		
		ActionForward forward=new ActionForward();
		forward.setRedirect(false);
		forward.setPath("board.jsp");
		return forward;
	}

}