package org.dbp.security;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Security {
    static public Cookie getCookieUsuario(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if(cookies == null) return null;
//        Cookie usuarioCookie = null;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("usuario")) {
                return cookie;
            }
//                request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        return null;
    }

    static public void removeCookieUsuario(HttpServletRequest request, HttpServletResponse response) {
        Cookie cookie = getCookieUsuario(request);
        if(cookie != null) {
            cookie.setValue("");
            cookie.setMaxAge(0);
            cookie.setPath(request.getContextPath());
            response.addCookie(cookie);
        }
    }
}
