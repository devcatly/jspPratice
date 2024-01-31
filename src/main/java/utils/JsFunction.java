package utils;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.PrintWriter;

public class JsFunction {

    public static void alertLocation(String msg, String url,JspWriter out){

       try {
           String script = "" +
                   "<script>"
                   + "alert('"+ msg + "');"
                   + " location.href='"+url+"';"
                   +"</script>";
           out.print(script);
       }
       catch (Exception e){

       }
    }
    
    public static void alertBack(String msg, JspWriter out) {

        try {
            String script = "" +
                    "<script>"
                    + "alert('" + msg + "');"
                    + " history.back() "
                    + "</script>";
            out.print(script);
        } catch (Exception e) {

        }

    }
        public static void alertLocation(HttpServletResponse resp, String msg, String url) {
            try {
                resp.setContentType("text/html;charset=UTF-8");
                PrintWriter writer = resp.getWriter();
                String script = "<script>"
                        + "    alert('" + msg + "');"
                        + "    location.href='" + url + "';"
                        + "</script>";
                writer.print(script);
            }
            catch (Exception e) {}
        }

        // 메시지 알림창을 띄운 후 이전 페이지로 돌아갑니다.
        public static void alertBack(HttpServletResponse resp, String msg) {
            try {
                resp.setContentType("text/html;charset=UTF-8");
                PrintWriter writer = resp.getWriter();
                String script = "<script>"
                        + "    alert('" + msg + "');"
                        + "    history.back();"
                        + "</script>";
                writer.print(script);
            }
            catch (Exception e) {}
     }
}
