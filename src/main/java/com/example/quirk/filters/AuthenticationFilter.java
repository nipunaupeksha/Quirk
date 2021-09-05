package com.example.quirk.filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class AuthenticationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        //Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        if(request.getRequestURI().contains("getProfileDetails")){
            HttpSession session = request.getSession();
            if(session.getAttribute("username")==null){
                request.getRequestDispatcher("login.jsp").forward(request,servletResponse);
            }
        }
        filterChain.doFilter(request,servletResponse);
    }

    @Override
    public void destroy() {
        //Filter.super.destroy();
    }
}
