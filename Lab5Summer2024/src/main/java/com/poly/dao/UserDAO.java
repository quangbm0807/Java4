package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.hibernate.sql.Insert;

import com.poly.entity.User;
import com.poly.utils.JpaUtils;

public class UserDAO {
	private EntityManager em = JpaUtils.getEntityManager();

	public User create(User entity) {
		try {
			em.getTransaction().begin();

			em.persist(entity);// them

			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {

			em.getTransaction().rollback();
			throw new RuntimeException(e);
			// TODO: handle exception
		}
	}

	public User update(User entity) {
		try {
			em.getTransaction().begin();

			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
			// TODO: handle exception
		}
	}

	public User remove(String id) {
		try {
			em.getTransaction().begin();
			User entity = this.findById(id);

			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
			// TODO: handle exception
		}
	}

	public User findById(String id) {
		return em.find(User.class, id);
	}

	public List<User> findByRole(boolean role) {
		String jpql = "Select o from User o where o.admin=:role1";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter("role1", role);
		return query.getResultList();
	}

	public List<User> findByKeyWord(String keyword) {
		String jpql = "Select o from User o where o.fullname like ?0";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter(0, keyword);
		return query.getResultList();
	}

	public User findOne(String username, String password) {
		String jpql = "Select o from User o where o.id=:id and o.password=:pass";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter("id", username);
		query.setParameter("pass", password);
		return query.getSingleResult();
	}

	public User findByEmail(String email) {
		String jpql = "Select o from User o where o.email=:email";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter("email", email);
		return query.getSingleResult();
	}

	 public List<User> findPage(int page, int size) {
	        EntityManager em = JpaUtils.getEntityManager();
	        try {
	            String jpql = "SELECT u FROM User u";
	            TypedQuery<User> query = em.createQuery(jpql, User.class);
	            query.setFirstResult(page * size);
	            query.setMaxResults(size);
	            return query.getResultList();
	        } finally {
	            em.close();
	        }
	    }

	    public long count() {
	        EntityManager em = JpaUtils.getEntityManager();
	        try {
	            String jpql = "SELECT COUNT(u) FROM User u";
	            TypedQuery<Long> query = em.createQuery(jpql, Long.class);
	            return query.getSingleResult();
	        } finally {
	            em.close();
	        }
	    }

	public List<User> findAll() {
		String jpql = "Select o from User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		return query.getResultList();
	}
}
