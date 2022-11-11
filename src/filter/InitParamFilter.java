package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {

	private FilterConfig filterConfig = null;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter02 수행,,,!");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		
		// 내가 입력한 아이디 비번이 admin/1234이면 로그인을 성공했다는 메세지 출력 
		// 그렇지 않을때, 로그인 실패했습니다. 라는 메세지를 출력 
		
		String msg;
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(id.equals(param1) && pw.equals(param2)) {
			msg = "로그인 성공했습니다";
		}else {
			msg = "로그인 실패했습니다";
		}
		
		out.println(msg);
		
		chain.doFilter(request, response);
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated 
		System.out.println("Filter02 초기화...!");
		this.filterConfig = filterConfig;
		
	}

}
