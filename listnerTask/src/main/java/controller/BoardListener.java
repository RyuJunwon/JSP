package controller;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import model.BoardDAO;
import model.BoardVO;
import model.Crawling;

/**
 * Application Lifecycle Listener implementation class BoardListener
 *
 */
@WebListener
public class BoardListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public BoardListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         ArrayList<BoardVO> datas = Crawling.sample();
         BoardDAO bDAO = new BoardDAO();
         
         for(int i = 0; i < datas.size(); i++) {
        	 BoardVO bVO = datas.get(i);
        	 bVO.setWriter("admin");
        	 bDAO.insert(bVO);
         }
         
         System.out.println("로그: 리스너 수행 완료");
    }
	
}
