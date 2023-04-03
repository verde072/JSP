package filter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
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

public class LogFileFilter implements Filter {
	//파일로 만들어야 하므로 파일객체를 전역변수 형태로 선언
	PrintWriter writer; 
	
	/*초기화 
	 * <init-param> <param-name>filename</param-name>
	 * <param-value>c:\\logs\\webmarket.log</param-value> </init-param>
	 * 
	 * 알기쉽게 설명: ?filename=c:\\logs\\webmarket.log
	 */
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		//마치 request.getParameter(filename)하는 것 처럼
		String filename=filterConfig.getInitParameter("filename"); //c:\\logs\\webmarket.log
		
		// 로그를 파일로 저장하기 위해 초기화 작업 수행
		//filename=>c:\\logs\\webmarket.log
//		String filename="c:\\logs\\webmarket.log";
		 
		try {
			//FileWriter(String fileName,boolean true/false)
			//1)true: 기존 내용에 새로운 내용이 추가(append)
			//2)false: 기존 내용을 지우고 덮어쓰기(overwrite)
			writer=new PrintWriter (new FileWriter(filename,true),true);
			
			//webmarket.log파일이 없으면 자동 생성
			//이렇게 하겠다고 설계
			File file = new File(filename);
			
			if (!file.exists()) {//설계상의 파일이 실제 없으면
				//설계대로 파일을 생성
				file.createNewFile();
				System.out.println(file.getAbsolutePath() + "파일이 생성되었습니다.");
			} else {//있으면
				System.out.println(file.getAbsolutePath() + "파일이 이미 생성되어 있습니다.");
			} 
			
		} catch (IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		writer.println("접속한 클라이언트IP:"+request.getRemoteAddr());
		long start=System.currentTimeMillis();
		writer.println("접근한 URL 경로:"+getURLPath(request));
		writer.println("요청 처리 시작 시각:"+getCurrentTime());
		
		//필터가 연속적으로 있다면 다음 필터로 제어 및 요청(request)/응답(response) 정보를 넘겨줌
		chain.doFilter(request, response);
		
		//시스템 현재 시간(종료시간)
		long end =System.currentTimeMillis();
		writer.println("요청 처리 종료 시간 : "+getCurrentTime());
		writer.println("요청 처리 종료 시간 : "+(end-start)+"ms");
		writer.println("================================");
		
	}

	@Override
	public void destroy() {
		//파일객체를 닫아줌. 메모리에서 제거 
		writer.close();
		
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
