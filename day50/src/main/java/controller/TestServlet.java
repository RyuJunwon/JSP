package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test.do")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" ajax 로그: " + request.getParameter("res"));
		PrintWriter out = response.getWriter(); // 서블릿은 내장객체가 없으므로 직접 꺼내줘야 하기 때문에 PrintWriter 선언
		if(request.getParameter("res").equals("img01")) {
			out.print("img01");
		}
		else {
			out.print("img02");
		}
	}

}
