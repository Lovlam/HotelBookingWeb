package com.poly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.poly.Entity.Account;
import com.poly.Service.AccountService;

@WebServlet({"/register","/login"})
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AccountService accountService = new AccountService();

    public AccountServlet() {
        super();
        
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
    	
    	String uri = request.getRequestURI();
    	
    	if(uri.contains("register")) {
    		try {
				register(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(uri.contains("login")) {
    		
    	}
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String uri = request.getRequestURI();
    	
    	if(uri.contains("register")) {
    		request.getRequestDispatcher("views/registerForm.jsp").forward(request, response);
    	}else if(uri.contains("login")) {
    		request.getRequestDispatcher("views/login.html").forward(request, response);
    	}
    	
    }
    
    public void register(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	Account account = new Account();
    	account.setName(request.getParameter("Name"));
    	account.setEmail(request.getParameter("Email"));
    	account.setPassword(request.getParameter("Password"));
    	account.setPhone(request.getParameter("Phone"));
    	account.setAddress(request.getParameter("Address"));
    	account.setManager(false);
    	account.setDelete(false);
    	System.out.println(request.getParameter("Name"));
    	Account checklogin = accountService.register(account);
    	if(checklogin == null) {
    		request.setAttribute("message", "email da ton tai");
    		request.getRequestDispatcher("views/registerForm.jsp").forward(request, response);
    	}else {
    		request.getRequestDispatcher("views/login.html").forward(request, response);
    	}
    	
    }

	



}
