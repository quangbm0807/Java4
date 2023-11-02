package com.poly.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class AppFilter extends HttpFilter implements Filter {
    private static final long serialVersionUID = 1L;

    public AppFilter() {
        super();
    }

    public void init(FilterConfig fConfig) throws ServletException {
    }

    public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession session = request.getSession(false);

        if (session != null) {
            session.setMaxInactiveInterval(15);
        }

        chain.doFilter(request, response);
    }

    public void destroy() {
    }
}
