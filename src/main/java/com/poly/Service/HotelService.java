package com.poly.Service;

import java.util.List;

import com.poly.Entity.Hotels;
import com.poly.Repository.HotelRepository;

public class HotelService {
	private HotelRepository hotelRepository = new HotelRepository();
	
	public List<Hotels> showAll(){
		return hotelRepository.findAllHotel();
	}
	
	public Hotels addHotel(Hotels hotel) {
		Hotels findHotel = hotelRepository.findHotelByName(hotel.getName());
		
		if(findHotel == null) {
			hotelRepository.addHotel(hotel);
			System.out.println("add success");
			return hotel;
		}else {
			System.out.println("add fail");
			return null;
		}
	}
	
	
	public Hotels deleteHotel(int id) {
		Hotels finHotel = hotelRepository.findHotelById(id);
		if(finHotel != null) {
			hotelRepository.deleteHotel(id);
			return finHotel;
		}
		return null;
	}

	public Hotels editHotel(Hotels oldHotel,int hotelId) {
		Hotels finHotel = hotelRepository.findHotelById(hotelId);
		if(finHotel != null) {
			oldHotel.setHotelID(finHotel.getHotelID());
			if(oldHotel.getImageURL() == null) {
				oldHotel.setImageURL(finHotel.getImageURL());
			}
			hotelRepository.updateHotel(oldHotel);
			return oldHotel;
		}
		return null;
	}

	
	
}
