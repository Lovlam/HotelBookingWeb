package com.poly.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

import com.poly.Entity.Hotels;
import com.poly.Repository.HotelRepository;
import com.poly.Service.HotelService;

import Utils.FileUploader;

@WebServlet("/admin/*")
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
	    maxFileSize = 1024 * 1024 * 10,      // 10 MB
	    maxRequestSize = 1024 * 1024 * 500   // 100 MB
	)
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static HotelService hotelService = new HotelService();
    
	public AdminServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getPathInfo();
        if (path == null) path = "";

        if(path.contains("/hotel/add")) {
        	System.out.println("ADD GET");
        	request.getRequestDispatcher("/views/viewAdmin/addHotel.html").forward(request, response);
        }else if(path.contains("/hotel/delete")) {
        	deleteHotel(request, response);
        }else if(path.contains("/hotel/edit")) {
        	System.out.println("GET EDIT");
        	editHotel(request, response);
        }else {
        	request.setAttribute("listHotel", showAllHotel(request, response));
        	request.getRequestDispatcher("/views/viewAdmin/hotelAdmin.jsp").forward(request, response);
        }
        
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getPathInfo();
        if (path == null) path = "";

        if(path.contains("/hotel/add")) {
        	System.out.println("ADD POST");
        	addHotel(request,response);
        }else if(path.contains("/hotel/delete")) {
        	
        }else if(path.contains("/hotel/edit")) {
        	System.out.println("POST EDIT");
        	editHotel(request, response);
        }
	}
	
	private void editHotel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String baseDirectory = getServletContext().getRealPath("/") + "files";
		int hotelId = Integer.parseInt(request.getParameter("id"));
		Hotels newHotel = new Hotels();
		newHotel.setName(request.getParameter("hotelName"));
		newHotel.setLocation(request.getParameter("hotelLocation"));
		newHotel.setStars(Integer.parseInt(request.getParameter("hotelStars")));
		newHotel.setDescription(request.getParameter("hotelDescription"));
		newHotel.setDelete(false);
		String hotelPhoto = FileUploader.uploadFile(request, response, baseDirectory ,"hotelImage");
		System.out.println(hotelPhoto);
		newHotel.setImageURL(hotelPhoto);
		
		Hotels hotel = hotelService.editHotel(newHotel,hotelId);
		System.out.println(hotel);
		if(hotel == null) {
			request.setAttribute("listHotel", showAllHotel(request, response));
		}else {
			request.setAttribute("listHotel", showAllHotel(request, response));
		}
		request.getRequestDispatcher("/views/viewAdmin/hotelAdmin.jsp").forward(request, response);
	}


	private void deleteHotel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int hotelId = Integer.parseInt(request.getParameter("id"));
	    Hotels hotel = hotelService.deleteHotel(hotelId);
	    if(hotel == null) {
	        response.setStatus(404);
	    } else {
	        response.setStatus(200);
	    }
		
	}


	private void addHotel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String baseDirectory = getServletContext().getRealPath("/") + "files";
		Hotels newHotel = new Hotels();
		newHotel.setName(request.getParameter("hotelName"));
		newHotel.setLocation(request.getParameter("hotelLocation"));
		System.out.println(request.getParameter("hotelName"));
		newHotel.setStars(Integer.parseInt(request.getParameter("hotelStar")));
		newHotel.setDescription(request.getParameter("hotelDescription"));
		newHotel.setDelete(false);
		
		String hotelPhoto = FileUploader.uploadFile(request, response, baseDirectory ,"hotelImage");
		System.out.println(hotelPhoto);
		newHotel.setImageURL(hotelPhoto);
		
//		
		Hotels checkadd = hotelService.addHotel(newHotel);
		if(checkadd == null) {
			request.setAttribute("message", "Khách sạn đã tồn tại ");
			request.setAttribute("listHotel", showAllHotel(request, response));
		}else {
			request.setAttribute("listHotel", showAllHotel(request, response));
		}
		request.getRequestDispatcher("/views/viewAdmin/hotelAdmin.jsp").forward(request, response);

	}
	
	
	private List<Hotels> showAllHotel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Hotels> hotels = hotelService.showAll();
		return hotels;
	}

}
