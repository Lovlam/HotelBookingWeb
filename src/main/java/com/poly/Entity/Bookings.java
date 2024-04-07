package com.poly.Entity;



import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "BooKings")
public class Bookings {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "BooKingID")
    private int bookingID;
    
    @ManyToOne
    @JoinColumn(name = "AccountID")
    private Account accountID;

    @Column(name = "HotelBookingID")
    private int hotelBookingID;

    @Column(name = "BookingDate")
    private Date bookingDate;

    @Column(name = "CheckIn")
    private Date checkIn;

    @Column(name = "CheckOut")
    private Date checkOut;

    @Column(name = "isPayment")
    private boolean isPayment;

    // Constructors, getters, and setters
    public Bookings() {}

    // Getters and setters
    public int getBookingID() {
        return bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public Account getAccountID() {
        return accountID;
    }

    public void setAccountID(Account accountID) {
        this.accountID = accountID;
    }

    public int getHotelBookingID() {
        return hotelBookingID;
    }

    public void setHotelBookingID(int hotelBookingID) {
        this.hotelBookingID = hotelBookingID;
    }

    public Date getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    public Date getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(Date checkOut) {
        this.checkOut = checkOut;
    }

    public boolean isPayment() {
        return isPayment;
    }

    public void setPayment(boolean payment) {
        isPayment = payment;
    }
}
