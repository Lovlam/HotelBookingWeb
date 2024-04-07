package com.poly.Repository;

import java.util.List;

import com.poly.Entity.Account;
import com.poly.JPAConfig.JpaConfig;

import jakarta.persistence.EntityTransaction;
import jakarta.persistence.EntityManager;

public class AccountRepository implements IAcountRepository{
	 
	private final EntityManager em = JpaConfig.getEntityManager();
	
	@Override
	public Account findAccountById(int accountId) {
		
		return em.find(Account.class, accountId);
	}

	@Override
	public void addAccount(Account account) {
		EntityTransaction transaction = em.getTransaction();
		try {
            transaction.begin();
            em.persist(account);
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }
		
	}

	@Override
	public void updateAccount(Account account) {
		EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.merge(account);
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }
		
	}

	@Override
	public void deleteAccount(int accountId) {
		EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            Account account = em.find(Account.class, accountId);
            if (account != null) {
                em.remove(account);
            }
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        }
		
	}

	@Override
	public List<Account> findAllAccounts() {
		try {
			return em.createQuery("SELECT a FROM Account a", Account.class).getResultList();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public Account findAccountByEmail(String email) {
		
	
		List<Account> result = em.createQuery("SELECT a FROM Account a WHERE a.email = :email", Account.class)
		         .setParameter("email", email)
		         .getResultList();
		
		
		if(result.size() == 1) {
			return result.get(0);
		}else {
			return null;
		}
			
	}

	@Override
	public Account findByEmailAndPassword(String email, String password) {
		try {
	        return em.createQuery("SELECT a FROM Account a WHERE a.Email = :email AND a.Password = :password", Account.class)
	                 .setParameter("email", email)
	                 .setParameter("password", password)
	                 .getSingleResult();
	    } catch (Exception e) {
	        // This exception is thrown if there is no result
	        return null;
	    } 
	}

}
