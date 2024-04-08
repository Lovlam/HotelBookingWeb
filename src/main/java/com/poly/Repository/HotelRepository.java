package com.poly.Repository;

import java.util.List;

import com.poly.Entity.Account;
import com.poly.Entity.Hotels;
import com.poly.JPAConfig.JpaConfig;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;

public class HotelRepository implements IHotelRepository{
	private final EntityManager em = JpaConfig.getEntityManager();
	@Override
	public void addHotel(Hotels hotel) {
		EntityTransaction transaction = em.getTransaction();
		try {
            transaction.begin();
            em.persist(hotel);
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }
	}

	@Override
	public void updateHotel(Hotels hotel) {
		EntityTransaction transaction = em.getTransaction();
		try {
            transaction.begin();
            em.merge(hotel);
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }	
	}

	@Override
	public void deleteHotel(int hotelID) {
		EntityTransaction transaction = em.getTransaction();
		try {
            transaction.begin();
            Hotels hotel = em.find(Hotels.class, hotelID);
            if (hotel != null) {
                em.remove(hotel);
            }
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }
	}

	@Override
	public Hotels findHotelByName(String hotelName) {
		List<Hotels> result = em.createQuery("SELECT a FROM Hotels a WHERE a.name = :name", Hotels.class)
		         .setParameter("name", hotelName)
		         .getResultList();
		if(result.size() > 0) return result.get(0);
		
		return null;
	}

	@Override
	public List<Hotels> findAllHotel() {
		try {
			return em.createQuery("SELECT a FROM Hotels a", Hotels.class).getResultList();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public List<Hotels> findHotelByStar(int numberOfStar) {
		List<Hotels> result = em.createQuery("SELECT a FROM Hotels a WHERE a.stars = :stars", Hotels.class)
		         .setParameter("stars", numberOfStar)
		         .getResultList();
		return result;
	}

	public Hotels findHotelById(int id) {
		List<Hotels> result = em.createQuery("SELECT a FROM Hotels a WHERE a.hotelID = :hotelID", Hotels.class)
		         .setParameter("hotelID", id)
		         .getResultList();
		if(result.size() > 0) return result.get(0);
		return null;
	}

}
