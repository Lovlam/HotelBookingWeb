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
    private String price;
    
    @ManyToOne
    @JoinColumn(name = "ImgID")
    private ImgRooms imgID;

    @Column(name = "isDelete")
    private boolean isDelete;

    @Column(name = "isBooKing")
    private boolean isBooking;

    // Constructors, getters, and setters
    public HotelRooms() {}

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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
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
}
