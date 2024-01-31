package filter;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.JsFunction;

import java.io.IOException;


@WebFilter(urlPatterns = {"/09PagingBoard/DeleteProcess.jsp","/09PagingBoard/Write.jsp",
        "/09PagingBoard/Edit.jsp"})
public class IsSessionFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        HttpSession session =req.getSession();
        if(session.getAttribute("UserId")==null){
            String backUrl = req.getRequestURI();
            JsFunction.alertLocation(resp,"로그인 후 이용해주새요","../15/LoginFilter.jsp?bsckUrl="+backUrl);

            return;
        }else {
            chain.doFilter(request,response);
        }

    }

}
