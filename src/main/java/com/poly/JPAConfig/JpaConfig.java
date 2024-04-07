package com.poly.JPAConfig;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JpaConfig {
    private static EntityManagerFactory factory;
    
    static {
        factory = Persistence.createEntityManagerFactory("BookingUnit");
    }

    public static EntityManager getEntityManager() {
        return factory.createEntityManager();
    }
    
    public static void closeFactory() {
        if (factory != null && factory.isOpen()) {
            factory.close();
        }
    }
}
