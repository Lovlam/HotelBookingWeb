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

@WebServlet({"/register","/login" , "/fpass"})
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
    			try {
					login(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    	}else if(uri.contains("fpass")){
    		try {
				forgot(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String uri = request.getRequestURI();
    	
    	if(uri.contains("register")) {
    		request.getRequestDispatcher("views/SignUp/SignUp.jsp").forward(request, response);
    	}else if(uri.contains("login")) {
    		request.getRequestDispatcher("views/ViewLogin/index.jsp").forward(request, response);
    	}else if(uri.contains("fpass")) {
    		request.getRequestDispatcher("views/FG/Forgot.jsp").forward(request, response);
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

    	Account checklogin = accountService.register(account);
    	
    	if(checklogin == null ) {
    		request.setAttribute("message", "email da ton tai hoặc số điện thoại đã tồn tại");
    		request.getRequestDispatcher("views/SignUp/SignUp.jsp").forward(request, response);
    	}else {

    		request.getRequestDispatcher("views/ViewLogin/index.jsp").forward(request, response);
    	}
    	
    }
    
    public void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	String emailStr = request.getParameter("email");
    	String pass = request.getParameter("pass"); 
    	Account account = accountService.login(emailStr, pass);
    	if(account == null) {	
    		request.setAttribute("erro", "Đăng nhập thất bại");
    		request.getRequestDispatcher("views/ViewLogin/index.jsp").forward(request, response);
    	} else {
    		if(account.isManager() == true) {
    			request.setAttribute("erro", "Đăng nhập thành công với admin"); 
    			request.getRequestDispatcher("views/ViewLogin/index.jsp").forward(request, response);
    		}else if(account.isManager() == false){
    			request.setAttribute("erro", "Đăng nhập thành công với user"); 
    			request.getRequestDispatcher("views/ViewLogin/index.jsp").forward(request, response);
    		}
    	}
    }
    
    public void forgot(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	String phoneStr = request.getParameter("phone"); 
    	Account account = accountService.Forgot(phoneStr) ; 
    	System.out.println(phoneStr);
    	if(account != null && account.getPhone().equals(phoneStr)) {
    		request.setAttribute("message", "đúng");
    		request.getRequestDispatcher("views/FG/Forgot.jsp").forward(request, response);
    		
    		
    	}else {
    		request.setAttribute("message", "sai");
    		request.getRequestDispatcher("views/FG/Forgot.jsp").forward(request, response);
    	}
    }


}
