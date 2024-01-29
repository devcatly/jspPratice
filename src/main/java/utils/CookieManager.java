package utils;

import java.io.PrintWriter;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.jsp.JspWriter;

public class CookieManager {
    public static void makeCookie(HttpServletResponse httpServletResponse, String cName,
    		String cValue, int cTime) {
    	Cookie cookie = new Cookie(cName, cValue);
    	cookie.setPath("/");
    	cookie.setMaxAge(cTime);
    	httpServletResponse.addCookie(cookie);
    }
    
    public static String readCookie(HttpServletRequest requset, String cName) {
    	String cookieValue = "";
    	
    	Cookie[] cookies = requset.getCookies();
    	if(cookies != null) {
    		for(Cookie c : cookies) {
    			String cookieNmae = c.getName();
    			if(cookieNmae.equals(cName)) {
    				cookieValue = c.getValue();			   			}
    		}
    	}
    	return cookieValue;
    }
    
    public static void deleteCookie(HttpServletResponse response, String cName) {
    	makeCookie(response,cName,"",0);
    }
    
}