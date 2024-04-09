package com.poly.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

import com.poly.Entity.HotelRooms;
import com.poly.Entity.Hotels;
import com.poly.Service.HotelService;
import com.poly.Service.RoomService;



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
	private static RoomService roomService = new RoomService();
	public AdminServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getPathInfo();
        if (path == null) path = "";

        if(path.contains("/hotel/add")) {
        	System.out.println("GET ADD HOTEL");
        	request.getRequestDispatcher("/views/viewAdmin/addHotel.html").forward(request, response);
        }else if(path.contains("/hotel/delete")) {
        	System.out.println("GET DELETE HOTEL");
        	deleteHotel(request, response);
        }else if(path.contains("/hotel/edit")) {
        	System.out.println("GET EDIT HOTEL");
        	editHotel(request, response);
        }else if(path.contains("/hotel")) {
        	System.out.println("GET HOTEL");
        	request.setAttribute("listHotel", showAllHotel(request, response));
        	request.getRequestDispatcher("/views/viewAdmin/hotelAdmin.jsp").forward(request, response);
        }else if(path.contains("/room/add")) {
        	System.out.println("GET ADD ROOM");
        	request.setAttribute("listHotel", showAllHotel(request, response));
        	request.getRequestDispatcher("/views/viewAdmin/addRoom.jsp").forward(request, response);
        }else if(path.contains("/room/delete")) {
        	deleteRoom(request, response);
        	System.out.println("GET DELETE ROOM");
        }else if(path.contains("/room/edit")) {
        	editRoom(request, response);
        	System.out.println("GET EDIT ROOM");
        }else if(path.contains("/room")) {
        	System.out.println("GET ROOM");
        	request.setAttribute("listHotel", showAllHotel(request, response));
        	request.setAttribute("listRoom", showAllRoom(request, response));
        	request.getRequestDispatcher("/views/viewAdmin/roomAdmin.jsp").forward(request, response);
        }else if(path.contains("/iamges")) {
        	request.getRequestDispatcher("/views/viewAdmin/ImgHotel.jsp").forward(request, response);
        }
        else {
        	response.setStatus(404);
        }
        
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String path = request.getPathInfo();
        if (path == null) path = "";

        if(path.contains("/hotel/add")) {
        	System.out.println("GET ADD HOTEL");
        	addHotel(request,response);
        }else if(path.contains("/hotel/delete")) {
        	System.out.println("POST DELETE HOTEL");
        	deleteHotel(request, response);
        }else if(path.contains("/hotel/edit")) {
        	System.out.println("POST EDIT HOTEL");
        	editHotel(request, response);
        }else if(path.contains("/hotel")) {
        	System.out.println("POST HOTEL");
        }else if(path.contains("/room/add")) {
        	addRoom(request, response);
        	System.out.println("POST ADD ROOM");
        }else if(path.contains("/room/delete")) {
        	deleteRoom(request, response);
        	System.out.println("POST DELETE ROOM");
        }else if(path.contains("/room/edit")) {
        	editRoom(request, response);
        	System.out.println("POST EDIT ROOM");
        }else if(path.contains("/room")) {
        	System.out.println("POST ROOM");
        }else {
        	response.setStatus(404);
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

	private void addRoom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String secltHotel = request.getParameter("hotelName");
	    String roomPrice = request.getParameter("roomPrice"); // Correct parameter name
	    String roomType = request.getParameter("roomType"); // Correct parameter name
	    String roomDes = request.getParameter("roomDes"); // Correct parameter name
	    System.out.println(secltHotel+roomDes+roomPrice+roomType);
	    if (secltHotel == null || roomPrice == null || roomType == null || roomDes == null) {
	        response.setStatus(400); 
	        return;
	    }

	    secltHotel = secltHotel.trim();
	    roomPrice = roomPrice.trim();
	    roomType = roomType.trim();
	    roomDes = roomDes.trim();

	    HotelRooms newRoom = new HotelRooms(roomType, Double.parseDouble(roomPrice), roomDes);

	    HotelRooms checkAddRoom = roomService.addRoom(secltHotel, newRoom);
	    System.out.println(checkAddRoom);
	    if (checkAddRoom != null) {
	        response.setStatus(200); // OK
	    } else {
	        response.setStatus(404); // Not found
	    }
	}
	
	private void deleteRoom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int roomId = Integer.parseInt(request.getParameter("id"));
	    HotelRooms room = roomService.deleteRoom(roomId);
	    if(room == null) {
	        response.setStatus(404);
	    } else {
	        response.setStatus(200);
	    }
	}

	private void editRoom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int roomId = Integer.parseInt(request.getParameter("roomId")); 
	    String roomType = request.getParameter("roomType"); 
	    double price = Double.parseDouble(request.getParameter("price"));
	    String status = request.getParameter("status"); 
	    String description = request.getParameter("description");
	    boolean isBooking = false;
	    if(status.equals("booked")) {
	    	isBooking = true;
	    }else {
	    	isBooking = false;
	    }
	    HotelRooms editedRoom = new HotelRooms(roomId,roomType, price, description,isBooking);
	    System.out.println(editedRoom.toString());
	    editedRoom.setRoomID(roomId); 
	    
	    HotelRooms updatedRoom = roomService.editRoom(editedRoom,roomId);

	    if (updatedRoom != null) {
	       response.setStatus(200); 
	    } else {
	       response.setStatus(404);
	    }
	}
	
	private List<HotelRooms> showAllRoom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<HotelRooms> rooms = roomService.showAll();
		return rooms;
	}
}
