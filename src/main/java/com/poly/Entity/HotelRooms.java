package com.poly.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "HotelRooms")
public class HotelRooms {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "RoomID")
    private int roomID;

    @ManyToOne
    @JoinColumn(name = "HotelID")
    private Hotels hotelID;

    @Column(name = "RoomType")
    private String roomType;

    @Column(name = "Price")
    private Double price;
    
    @ManyToOne
    @JoinColumn(name = "ImgID")
    private ImgRooms imgID;

    @Column(name = "isDelete")
    private boolean isDelete;

    @Column(name = "isBooKing")
    private boolean isBooking;

    @Column(name = "Description")
    private String description;
    
    // Constructors, getters, and setters
    public HotelRooms() {}

    
    
    public HotelRooms(String roomType, Double price, String description) {
		super();
		this.roomType = roomType;
		this.price = price;
		this.description = description;
		this.isBooking = false;
		this.isDelete = false;
	}
    
    public HotelRooms(int roomID, String roomType, Double price, String description, boolean isBooking) {
		super();
		this.roomID = roomID;
		this.roomType = roomType;
		this.price = price;
		this.description = description;
		this.isBooking = isBooking;
		this.isDelete = false;
	}



	// Getters and setters
    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public Hotels getHotels() {
        return hotelID;
    }

    public void setHotels(Hotels hotelID) {
        this.hotelID = hotelID;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public ImgRooms getImgID() {
        return imgID;
    }

    public void setImgID(ImgRooms imgID) {
        this.imgID = imgID;
    }

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }

    public boolean isBooking() {
        return isBooking;
    }

    public void setBooking(boolean booking) {
        isBooking = booking;
    }

	public Hotels getHotelID() {
		return hotelID;
	}

	public void setHotelID(Hotels hotelID) {
		this.hotelID = hotelID;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
    
	public String getHotelName() {
        if (hotelID != null) {
            return hotelID.getName(); 
        } else {
            return ""; 
        }
    }


	public int getImageID() {
		return this.imgID.getImgID();
	}

	@Override
	public String toString() {
		return "HotelRooms [roomID=" + roomID + ", hotelID=" + hotelID + ", roomType=" + roomType + ", price=" + price
				+ ", imgID=" + imgID + ", isDelete=" + isDelete + ", isBooking=" + isBooking + ", description="
				+ description + "]";
	}
	
	
}
