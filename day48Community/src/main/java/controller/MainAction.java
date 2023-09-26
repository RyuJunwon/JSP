package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardSet;
import model.BoardSetDAO;

public class MainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward = null;
		
		forward = new ActionForward();
		forward.setPath("main.jsp");
		forward.setRedirect(false);
		
		// 제일 좋은 방법은 try-catch로 묶는 방법 --> 지금 한 코딩은 어떤식의 로직인지 보기 위해
		String count = request.getParameter("count"); 
		if(count == null || count.isEmpty() || count.isBlank() || count.equals("")) { 
			// 조건에 null 값이 있을경우 항상 null 조건식을 먼저 넣기
			// 무거워지지 않도록 하기 위해서임
			count = "2";
		}
		int cnt = Integer.parseInt(count);
		
		BoardSetDAO bsDAO = new BoardSetDAO();
		ArrayList<BoardSet> datas = bsDAO.selectAll(null, cnt); // count는 DAO 개수 볼 때 사용됨.
		request.setAttribute("datas", datas);
		request.setAttribute("count", cnt);
		
		return forward;
	}

}
