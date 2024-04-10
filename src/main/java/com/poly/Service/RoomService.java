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
		System.out.println(finHotel);
		if(finHotel != null ) {
			
			room.setHotelID(finHotel);
			roomRepository.addRoom(room);
			return room;
		}
		
		return null;
	}
	
	
	public HotelRooms deleteRoom(int id) {
		HotelRooms findRoom = roomRepository.findRoomById(id);
		if(findRoom != null) {
			roomRepository.deleteRoom(id);
			return findRoom;
		}
		return null;
	}
//
	public HotelRooms editRoom(HotelRooms oldRoom,int roomID) {
		HotelRooms finHotel = roomRepository.findRoomById(roomID);
		if(finHotel != null) {
			oldRoom.setHotelID(finHotel.getHotelID());
			roomRepository.updateRoom(oldRoom);
			return oldRoom;
		}
		return null;
	}
	
	public List<HotelRooms> showRoomsOfHotel(int hotelID) {
		return roomRepository.findRoomByHotelID(hotelID);
	}
}
