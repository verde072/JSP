package filter;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class LogFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("WebMarket 초기화 ");
		
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("접속한 클라이언트IP:"+request.getRemoteAddr());
		long start=System.currentTimeMillis();
		System.out.println("접근한 URL 경로:"+getURLPath(request));
		System.out.println("요청 처리 시작 시각:"+getCurrentTime());
		
		//필터가 연속적으로 있다면 다음 필터로 제어 및 요청(request)/응답(response) 정보를 넘겨줌
		chain.doFilter(request, response);
		
		//시스템 현재 시간(종료시간)
		long end =System.currentTimeMillis();
		System.out.println("요청 처리 종료 시간 : "+getCurrentTime());
		System.out.println("요청 처리 종료 시간 : "+(end-start)+"ms");
		System.out.println("================================");
	}

	
	@Override
	public void destroy() {
		System.out.println("WebMarket 종료...");
		
	}
	
	//접근한 URL경로 리턴 메서드
	//http://localhost/ch11/readParameterNoErrorPage.jsp?name=개똥이
	private String getURLPath(ServletRequest request) {
		//HttpServeltRequest 인터페이스는 ServletRequest 인테페이스를 상속받음
		HttpServletRequest req;
		//currentPath: URL경로=>http://localhost/ch11/readParameterNoErrorPage.jsp
		String currentPath="";
		//queryString: 요청파라미터 =>name=개똥이
		String queryString="";
		//instanceOf 연산자는 객체가 어떤 클래스인지, 어떤 클래스를 상속받았는지 확인하는데 사용됨
		if(request instanceof HttpServletRequest) {
			//자식=(cast)부모
			req=(HttpServletRequest)request;
			currentPath=req.getRequestURI();
			System.out.println("currentPath"+currentPath);
			queryString=req.getQueryString();
			System.out.println("queryString"+queryString);
			
			queryString=queryString==null?"":"?"+queryString;
		}
		return currentPath+queryString;
	}
	
	
	private String getCurrentTime() {
		DateFormat formatter=new SimpleDateFormat("yyyy/MM/dd HH:MM:SS");
		//캘린더 객체 생성(싱글톤: 메모리 1번 생성하고 전역변수처럼 사용)
		Calendar calendar=Calendar.getInstance();
		//톰켓서버에서 제공해주는 시스템현재시간을 구해서 캘린더 객체에 세팅
		calendar.setTimeInMillis(System.currentTimeMillis());
		//
		return formatter.format(calendar.getTime());
	}

}
