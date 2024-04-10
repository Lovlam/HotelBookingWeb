package com.poly.Repository;

import java.util.List;

import com.poly.Entity.ImgRooms;
import com.poly.JPAConfig.JpaConfig;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;

public class ImageRepository implements IImageRepository{
	private final EntityManager em = JpaConfig.getEntityManager();
	@Override
	public void addImage(List<ImgRooms> listImage) {
		EntityTransaction transaction = em.getTransaction();
        try {
            for(ImgRooms img : listImage) {
            	transaction.begin();
                em.persist(img);
                transaction.commit();
            }
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }
		
	}

	@Override
	public void updateImage(List<ImgRooms> room) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteImage(int roomID) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ImgRooms> findImageByRoomID(int roomID) {
		List<ImgRooms> result = em.createQuery("SELECT a FROM ImgRooms a WHERE a.roomID = :roomID", ImgRooms.class)
		         .setParameter("roomID", roomID)
		         .getResultList();
		return result;
	}

	@Override
	public List<ImgRooms> findAllImage() {
		return em.createQuery("SELECT a FROM ImgRoom a", ImgRooms.class)
		         .getResultList();
	}

}
