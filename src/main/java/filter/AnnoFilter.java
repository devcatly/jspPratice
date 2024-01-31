package filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

@WebFilter(filterName = "AnnoFilter", urlPatterns = "/15/AnnoFilter.jsp")

public class AnnoFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        String searchFiled = request.getParameter("searchFilter");
        String searchWord = request.getParameter("searchFilter");
        System.out.println("검색필드"+searchFiled);
        System.out.println("검색어"+searchWord);
        chain.doFilter(request,response);
    }


}
