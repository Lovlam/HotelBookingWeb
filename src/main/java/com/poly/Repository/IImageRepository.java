package com.poly.Repository;

import java.util.List;

import com.poly.Entity.HotelRooms;
import com.poly.Entity.ImgRooms;

public interface IImageRepository {
	void addImage(List<ImgRooms> listImage);
	void updateImage(List<ImgRooms> room);
	void deleteImage(int roomID);
	List<ImgRooms> findImageByRoomID(int roomID);
	List<ImgRooms> findAllImage();
	
}
