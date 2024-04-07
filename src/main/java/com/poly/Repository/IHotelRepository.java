package com.poly.Repository;

import java.util.List;

import com.poly.Entity.Hotels;

public interface IHotelRepository {
	void addHotel(Hotels hotel);
	void updateHotel(Hotels hotel);
	void deleteHotel(int hotelID);
	Hotels findHotelByName(String hotelName);
	List<Hotels> findAllHotel();
	List<Hotels> findHotelByStar(int numberOfStar);
	
}
