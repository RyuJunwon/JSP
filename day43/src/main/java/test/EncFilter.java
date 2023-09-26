package test;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

/**
 * Servlet Filter implementation class EncFilter
 */

// 어노테이션 [ 애너테이션 ] -->> 메모리 효율이 좋아진다.
@WebFilter("*.jsp") /* filter mapping 설정 */ 
public class EncFilter extends HttpFilter implements Filter {
       
	private String encoding;
	
    /**
     * @see HttpFilter#HttpFilter()
     */
    public EncFilter() { // 생성자 --> 기본 생성자가 꼭 필요하다는걸 알려주기 위해 사용
        super();
        // 필터가 메모리에서 해제될 때 자동 호출
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() { // 생성자
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 인코딩 처리 로직을 보통 상단에 배치한다.
		// 사용자의 요청 정보를 보고, 무엇을 요청했는지를 찾아서 다음 페이지로 이동하기 때문에 이동하기 전에 처리해야 한다.
		request.setCharacterEncoding(this.encoding); // 설정값을 바로 넣는 것을 "하드 코딩"이라고 한다.
		// 하드 코딩을 할 시 유지보수가 보편적으로 불리함 -->> 따라서 상수화로 적용 하는 것이 좋다.
		// --> 더 좋은 방법은 설정 파일을 생성해서 해당 파일의 내용을 불러와서 사용하는 것이다.
		// 		: 자바를 재작성하게 되면 컴파일을 다시해야 되는데,  == 불리함.
		// 		: 서버가 1초이상 정지되어야한다면 사용자가 이용을 못하게 됨.
		//		: 서버 비용이 절감이 됨.
		
		// 필터가 적용이 됐는지 안됐는지 확인해보려면 로그를 찍어서 확인
		System.out.println("로그: ");
		
		chain.doFilter(request, response);
		// 이 메소드는 사용자의 요청을 뜻함.
		// 사용자의 요청 정보들이 모두 저장되어 있음.
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// 필터가 최초로 생성될 때 자동 호출
		// '최초로 생성될 때' 호출되기 때문에 단 한번 호출됨.
		this.encoding = fConfig.getServletContext().getInitParameter(encoding); // 멤버 변수 초기화
		System.out.println(" 로그: init() 동작함.");
		// Not 코더들은 생성자가 할일이 많기 때문에 일반적으로 생성자를 건드리지 않고 멤버 변수를 초기화를 여기서 진행한다.
		
		
		
		
		
	}

}
