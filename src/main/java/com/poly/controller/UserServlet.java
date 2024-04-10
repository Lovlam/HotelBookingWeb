package com.poly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.nimbusds.oauth2.sdk.Request;
import com.poly.Entity.HotelRooms;
import com.poly.Entity.Hotels;
import com.poly.Service.HotelService;
import com.poly.Service.RoomService;
@WebServlet("/user/*")
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
	    maxFileSize = 1024 * 1024 * 10,      // 10 MB
	    maxRequestSize = 1024 * 1024 * 500   // 100 MB
	)

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static HotelService hotelService = new HotelService();
	private static RoomService roomService = new RoomService();
    public UserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if(uri.contains("/index")) {
			request.getRequestDispatcher("/views/UserView/index.jsp").forward(request, response);
		}else if(uri.contains("/about")) {
			request.getRequestDispatcher("/views/UserView/about.jsp").forward(request, response);
		}else if(uri.contains("/tour")) {
			request.getRequestDispatcher("/views/UserView/tour.jsp").forward(request, response);
		}else if(uri.contains("/hotels")) {
			showSelectHotel(showAllHotel(request, response), request, response);
			request.getRequestDispatcher("/views/UserView/hotel.jsp").forward(request, response);
		}else if(uri.contains("/blog")) {
			request.getRequestDispatcher("/views/UserView/blog.jsp").forward(request, response);
		}else if(uri.contains("/contact")) {
			request.getRequestDispatcher("/views/UserView/contact.jsp").forward(request, response);
		}else if(uri.contains("/hotel")) {
			showDetailHotel(request, response);
		}
		else {
			request.getRequestDispatcher("/views/UserView/index.jsp").forward(request, response);
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/UserView/index.jsp").forward(request, response);
	}
	
	private List<Hotels> showAllHotel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Hotels> hotels = hotelService.showAll();
		return hotels;
	}
	
	private List<HotelRooms> showAllRoom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<HotelRooms> rooms = roomService.showAll();
		return rooms;
	}
	
	private void showDetailHotel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int hotelID = Integer.parseInt(request.getParameter("id"));
		System.out.println(hotelID);
		Hotels hotel = hotelService.getHotelById(hotelID);
		if(hotel != null) {
			request.setAttribute("hotel", hotel);
			request.setAttribute("listRoom", roomService.showRoomsOfHotel(hotel.getHotelID()));
			request.getRequestDispatcher("/views/UserView/hotel-single.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/user/hotels").forward(request, response);
		}
	}
	
	private void showSelectHotel(List<Hotels> hotels,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("listHotel", hotels);
	}

}
