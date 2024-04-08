package com.poly.Repository;

import java.util.List;

import com.poly.Entity.HotelRooms;

public interface IRoomRepository {
	void addRoom(HotelRooms room);
	void updateRoom(HotelRooms room);
	void deleteRoom(int roomID);
	List<HotelRooms> findRoomByType(String roomType);
	List<HotelRooms> findAllRoom();
	List<HotelRooms> findRoomByPrice(Double price);
	List<HotelRooms> findRoomBooking();
}
