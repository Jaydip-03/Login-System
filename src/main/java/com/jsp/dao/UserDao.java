package com.jsp.dao;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.jsp.model.User;
import com.jsp.util.JPAUtil;

public class UserDao {

    //  LOGIN
    public User validateUser(String username, String password) {

        EntityManager em = JPAUtil.getEMF().createEntityManager();

        TypedQuery<User> query = em.createQuery(
                "SELECT u FROM User u WHERE u.username = :u AND u.password = :p",
                User.class);

        query.setParameter("u", username);
        query.setParameter("p", password);

        User user = null;

        try {
            user = query.getSingleResult();
        } catch (Exception e) {
            // no user found
        }

        em.close();
        return user;
    }

    //  REGISTER (SAVE USER)
    public void saveUser(User user) {

        EntityManager em = JPAUtil.getEMF().createEntityManager();

        em.getTransaction().begin();
        em.persist(user);
        em.getTransaction().commit();

        em.close();
    }

    // 🔹 CHECK USER EXISTS
    public boolean isUserExists(String username) {

        EntityManager em = JPAUtil.getEMF().createEntityManager();

        try {
            Long count = em.createQuery(
                    "SELECT COUNT(u) FROM User u WHERE u.username = :u",
                    Long.class)
                    .setParameter("u", username)
                    .getSingleResult();

            return count > 0;

        } finally {
            em.close();
        }
    }
}