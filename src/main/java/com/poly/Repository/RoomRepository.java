package com.poly.Repository;

import java.util.List;

import com.poly.Entity.HotelRooms;
import com.poly.Entity.Hotels;
import com.poly.JPAConfig.JpaConfig;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;

public class RoomRepository implements IRoomRepository {

    private final EntityManager em = JpaConfig.getEntityManager();

    @Override
    public void addRoom(HotelRooms room) {
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.persist(room);
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }
    }

    @Override
    public void updateRoom(HotelRooms room) {
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.merge(room);
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }
    }

    @Override
    public void deleteRoom(int roomID) {
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            HotelRooms room = em.find(HotelRooms.class, roomID);
            if (room != null) {
                em.remove(room);
            }
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }
    }

    @Override
    public List<HotelRooms> findRoomByType(String roomType) {
        return em.createQuery("SELECT r FROM HotelRooms r WHERE r.roomType = :roomType", HotelRooms.class)
                .setParameter("roomType", roomType)
                .getResultList();
    }

    @Override
    public List<HotelRooms> findAllRoom() {
        return em.createQuery("SELECT r FROM HotelRooms r", HotelRooms.class)
                .getResultList();
    }

    @Override
    public List<HotelRooms> findRoomByPrice(Double price) {
    	List<HotelRooms> result = em.createQuery("SELECT a FROM HotelRooms a WHERE a.price = :price", HotelRooms.class)
		         .setParameter("price", price)
		         .getResultList();
		return result;
    }

    @Override
    public List<HotelRooms> findRoomBooking() {
    	List<HotelRooms> result = em.createQuery("SELECT a FROM HotelRooms a WHERE a.isBooking = true ", HotelRooms.class)
		         .getResultList();
		return result;
    }
    
    public List<HotelRooms> findRoomMinMaxPrice(Double min, Double max) {
    	List<HotelRooms> result = em.createQuery("SELECT a FROM HotelRooms a WHERE a.price > :min AND a.price < :max", HotelRooms.class)
		         .setParameter("min", min)
		         .setParameter("max", max)
		         .getResultList();
		return result;
    }

    
	public HotelRooms findRoomById(int id) {

		return em.createQuery("SELECT a FROM HotelRooms a WHERE a.roomID = :id", HotelRooms.class)
		         .setParameter("id", id)
		         .getSingleResult();
	}

	@Override
	public List<HotelRooms> findRoomByHotelID(Hotels hotelID) {
		return em.createQuery("SELECT a FROM HotelRooms a WHERE a.hotelID = :hotelID ", HotelRooms.class)
		         .setParameter("hotelID", hotelID)
		         .getResultList();
	}

	@Override
	public List<HotelRooms> findRoomByHotelID(int hotelID) {
		
		return null;
	}
}
