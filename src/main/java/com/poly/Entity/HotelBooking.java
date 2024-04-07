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
@Table(name = "HotelBooking")
public class HotelBooking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "HotelBookingID")
    private int hotelBookingID;

    @ManyToOne
    @JoinColumn(name = "BooKingID")
    private Bookings bookingID;

    @ManyToOne
    @JoinColumn(name = "RoomID")
    private HotelRooms roomID;

    // Constructors, getters, and setters
    public HotelBooking() {}

    // Getters and setters
    public int getHotelBookingID() {
        return hotelBookingID;
    }

    public void setHotelBookingID(int hotelBookingID) {
        this.hotelBookingID = hotelBookingID;
    }

    public Bookings getBooking() {
        return bookingID;
    }

    public void setBooking(Bookings bookingID) {
        this.bookingID = bookingID;
    }

    public HotelRooms getRoom() {
        return roomID;
    }

    public void setRoom(HotelRooms roomID) {
        this.roomID = roomID;
    }
}
