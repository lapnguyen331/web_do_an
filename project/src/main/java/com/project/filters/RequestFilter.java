package com.project.filters;

import com.project.models.User;
import com.project.services.CategoryService;
import com.project.services.UserService;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter(filterName = "global2", urlPatterns = {"/*"}, dispatcherTypes = {DispatcherType.REQUEST, DispatcherType.FORWARD})
public class RequestFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void destroy() {}

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession(true);
        filterChain.doFilter(servletRequest, servletResponse);
    }
}