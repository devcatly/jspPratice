package filter;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

public class BasicFilter implements Filter {

    FilterConfig config;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        config = filterConfig;
        String filterName = filterConfig.getFilterName(); //<filter-name>의 요소

        System.out.println("BasicFIleer -> inti()호출"+filterName);

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
/*        ServletRequest:요청정보를 저장한 객체
          ServletResponse: 응답정보를 저장한 객체
          FilterChain: 다음 필터를 호춣하거나 최종리소스를 호출할때 사용
          */


        String filterInitParam = config.getInitParameter("FILTER_INIT_PARAM"); // <init-param>요소지저, 초기화 맴버변수 값
        System.out.println("Basic Filter-> 초기화 맴버변수"+filterInitParam);
        
        String method = ((HttpServletRequest)request).getMethod();
        System.out.println("BaicFilter -> 전송방식"+method);
        
        chain.doFilter(request,response);
    }

    @Override
    public void destroy(){
        System.out.println("BasicFIlter -> destoy() 호출됨");
    }
}
