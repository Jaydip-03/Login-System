package com.jsp.util;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

    private static EntityManagerFactory emf =
        Persistence.createEntityManagerFactory("loginPU");

    public static EntityManagerFactory getEMF() {
        return emf;
    }
}