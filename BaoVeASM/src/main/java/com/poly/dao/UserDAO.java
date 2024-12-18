package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import com.poly.entity.User;
import com.poly.utils.JpaUtils;

public class UserDAO {

	public User create(User entity) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		try {
			tx.begin();
			em.persist(entity);
			tx.commit();
			return entity;
		} catch (Exception e) {
			tx.rollback();
			throw new RuntimeException(e);
		} finally {
			em.close();
		}
	}

	public User update(User entity) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		try {
			tx.begin();
			User updatedEntity = em.merge(entity);
			tx.commit();
			return updatedEntity;
		} catch (Exception e) {
			tx.rollback();
			throw new RuntimeException(e);
		} finally {
			em.close();
		}
	}

	public User remove(String id) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		try {
			tx.begin();
			User entity = findById(id);
			if (entity != null) {
				em.remove(entity);
			}
			tx.commit();
			return entity;
		} catch (Exception e) {
			tx.rollback();
			throw new RuntimeException(e);
		} finally {
			em.close();
		}
	}

	public User findById(String id) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			return em.find(User.class, id);
		} finally {
			em.close();
		}
	}

	public List<User> findUsers(String id, String fullname, String email, Boolean admin, int page, int size) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			StringBuilder jpql = new StringBuilder("SELECT u FROM User u WHERE 1=1");
			if (id != null && !id.trim().isEmpty()) {
				jpql.append(" AND u.id LIKE :id");
			}
			if (fullname != null && !fullname.trim().isEmpty()) {
				jpql.append(" AND u.fullname LIKE :fullname");
			}
			if (email != null && !email.trim().isEmpty()) {
				jpql.append(" AND u.email LIKE :email");
			}
			if (admin != null) {
				jpql.append(" AND u.admin = :admin");
			}

			TypedQuery<User> query = em.createQuery(jpql.toString(), User.class);
			if (id != null && !id.trim().isEmpty()) {
				query.setParameter("id", "%" + id + "%");
			}
			if (fullname != null && !fullname.trim().isEmpty()) {
				query.setParameter("fullname", "%" + fullname + "%");
			}
			if (email != null && !email.trim().isEmpty()) {
				query.setParameter("email", "%" + email + "%");
			}
			if (admin != null) {
				query.setParameter("admin", admin);
			}

			query.setFirstResult(page * size);
			query.setMaxResults(size);

			return query.getResultList();
		} finally {
			em.close();
		}
	}

	public User findOne(String username, String password) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			String jpql = "SELECT o FROM User o WHERE o.id = :username AND o.password = :password";
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("username", username);
			query.setParameter("password", password);
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			em.close();
		}
	}

	public long countUsers(String id, String fullname, String email, Boolean admin) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			StringBuilder jpql = new StringBuilder("SELECT COUNT(u) FROM User u WHERE 1=1");
			if (id != null && !id.trim().isEmpty()) {
				jpql.append(" AND u.id LIKE :id");
			}
			if (fullname != null && !fullname.trim().isEmpty()) {
				jpql.append(" AND u.fullname LIKE :fullname");
			}
			if (email != null && !email.trim().isEmpty()) {
				jpql.append(" AND u.email LIKE :email");
			}
			if (admin != null) {
				jpql.append(" AND u.admin = :admin");
			}

			TypedQuery<Long> query = em.createQuery(jpql.toString(), Long.class);
			if (id != null && !id.trim().isEmpty()) {
				query.setParameter("id", "%" + id + "%");
			}
			if (fullname != null && !fullname.trim().isEmpty()) {
				query.setParameter("fullname", "%" + fullname + "%");
			}
			if (email != null && !email.trim().isEmpty()) {
				query.setParameter("email", "%" + email + "%");
			}
			if (admin != null) {
				query.setParameter("admin", admin);
			}

			return query.getSingleResult();
		} finally {
			em.close();
		}
	}
}