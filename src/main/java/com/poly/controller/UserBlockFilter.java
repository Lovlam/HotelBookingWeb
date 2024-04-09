package com.poly.controller;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.poly.Entity.Account;

/*@WebFilter(urlPatterns = { "/admin/*" })*/
public class UserBlockFilter extends HttpFilter implements Filter {
       

    public UserBlockFilter() {
        super();
    }


	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		Account user = (Account) req.getSession().getAttribute("isLoginUs");
		
		if(user == null) {
			resp.sendRedirect(req.getContextPath() + "user/index");
		}else {
			if (user.isManager() == false) {
				resp.sendRedirect(req.getContextPath() + "/user/index");
			} else {
				chain.doFilter(request, response);
			}
		}
		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
