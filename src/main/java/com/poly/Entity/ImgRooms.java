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
@Table(name = "ImgRooms")
public class ImgRooms {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ImgID")
    private int imgID;

    @Column(name = "Url")
    private String url;

    @ManyToOne
    @JoinColumn(name = "RoomID")
    private HotelRooms roomID;

    // Constructors, getters, and setters
    public ImgRooms() {}

    // Getters and setters
    public int getImgID() {
        return imgID;
    }

    public void setImgID(int imgID) {
        this.imgID = imgID;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public HotelRooms getRoom() {
        return roomID;
    }

    public void setRoom(HotelRooms room) {
        this.roomID = room;
    }
}
