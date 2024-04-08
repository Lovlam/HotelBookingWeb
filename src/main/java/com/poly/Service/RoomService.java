package com.poly.Service;

import java.util.List;

import com.poly.Entity.HotelRooms;
import com.poly.Entity.Hotels;
import com.poly.Repository.HotelRepository;
import com.poly.Repository.RoomRepository;

public class RoomService {
private RoomRepository roomRepository = new RoomRepository();
private HotelRepository hotelRepository = new HotelRepository();
	
	public List<HotelRooms> showAll(){
		return roomRepository.findAllRoom();
	}
	
	public List<HotelRooms> showType(String type){
		return (List<HotelRooms>) roomRepository.findRoomByType(type);
	}
	
	public HotelRooms addRoom(String hotelName, HotelRooms room) {
		Hotels finHotel = hotelRepository.findHotelByName(hotelName);
		if(finHotel != null ) {
			roomRepository.addRoom(room);
			return room;
		}
		
		return null;
	}
	
	
//	public HotelRooms deleteRoom(int id) {
//		HotelRooms findRoom = roomRepository.findHotelById(id);
//		if(finHotel != null) {
//			roomRepository.deleteHotel(id);
//			return finHotel;
//		}
//		return null;
//	}
//
//	public HotelRooms editRoom(HotelRooms oldHotel,int hotelId) {
//		HotelRooms finHotel = roomRepository.findHotelById(hotelId);
//		if(finHotel != null) {
//			oldHotel.setHotelID(finHotel.getHotelID());
//			if(oldHotel.getImageURL() == null) {
//				oldHotel.setImageURL(finHotel.getImageURL());
//			}
//			roomRepository.updateHotel(oldHotel);
//			return oldHotel;
//		}
//		return null;
//	}
}
