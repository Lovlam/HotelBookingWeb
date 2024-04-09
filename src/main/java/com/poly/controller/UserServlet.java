package com.poly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/user/*")
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
	    maxFileSize = 1024 * 1024 * 10,      // 10 MB
	    maxRequestSize = 1024 * 1024 * 500   // 100 MB
	)

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if(uri.contains("/index")) {
			request.getRequestDispatcher("/views/UserView/index.jsp").forward(request, response);
		}else if(uri.contains("/about")) {
			request.getRequestDispatcher("/views/UserView/about.html").forward(request, response);
		}else if(uri.contains("/tour")) {
			request.getRequestDispatcher("/views/UserView/tour.html").forward(request, response);
		}else if(uri.contains("/hotels")) {
			request.getRequestDispatcher("/views/UserView/hotel.html").forward(request, response);
		}else if(uri.contains("/blog")) {
			request.getRequestDispatcher("/views/UserView/blog.html").forward(request, response);
		}else if(uri.contains("/contact")) {
			request.getRequestDispatcher("/views/UserView/contact.html").forward(request, response);
		}else {
			request.getRequestDispatcher("/views/UserView/index.jsp").forward(request, response);
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/UserView/index.html").forward(request, response);
	}

}
