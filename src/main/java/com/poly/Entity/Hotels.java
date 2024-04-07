
package com.poly.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Hotels")
public class Hotels{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "HotelID")
    private int hotelID;

    @Column(name = "Name")
    private String name;

    @Column(name = "Location")
    private String location;

    @Column(name = "Stars")
    private int stars;

    @Column(name = "ImageURL")
    private String imageURL;

    @Column(name = "Description")
    private String description;

    @Column(name = "isDelete")
    private boolean isDelete;

    // Constructors, getters, and setters
    public Hotels() {}

    // Getters and setters
    public int getHotelID() {
        return hotelID;
    }

    public void setHotelID(int hotelID) {
        this.hotelID = hotelID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getStars() {
        return stars;
    }

    public void setStars(int stars) {
        this.stars = stars;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }
}
