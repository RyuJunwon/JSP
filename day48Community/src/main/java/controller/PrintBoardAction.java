package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardSetDAO;

public class PrintBoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ActionForward forward = null;
		
		BoardSetDAO bsDAO = new BoardSetDAO();
		
		if(bsDAO.selectAll(null, 5) != null) {
			forward = new ActionForward();
			forward.setPath("main.do");
			forward.setRedirect(false);
		}
		
		return forward;
	}

}
