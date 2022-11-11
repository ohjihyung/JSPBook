package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	// 필터를 리소스에 적용하도록 doFilter() 메서드를 작성
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter01.jsp 수행,,!");
		//요청 jsp 페이지에서 한글 처리하지않고 ,Filter에서 미리 처리
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		
		// 폼페이지에서 전송된 요청 파라미터가 없으면 응답 웹 페이지에 메시지 출력
		// 응답 웹 페이지에 대한 문자 인코딩,컨텐츠 유형, 메세지를 작성
		if(name == null || name.equals("")) {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			String msg = "입력된 name 은 null";
			
			out.print(msg);
			return; // 요청 url로 넘어가지 않고 해당 필터에서 응답페이지가 결과로 나간다.
		}
		
		// 연속적으로 필터가 있으면 다음 필터로 제어를 넘기도록 FilterChain객체 타입의 doFiler()
		// 메서드를 작성
		chain.doFilter(request, response);
		
	}

	// 필터를 초기화하도록 init()메서드를 작성한다.
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter01 초기화..!");
		
	}

}
