package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.poly.controller.JpaUtils;
import com.poly.model.Student;

public class StudentDAO {
	@Override
	protected void finalize() throws Throwable {
		EntityManager em = JpaUtils.getEntityManager();
		em.close();
		super.finalize();
	}

	public void create(Student Student) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(Student);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
			throw e;
		} finally {
			em.close();
		}
	}

	public void update(Student Student) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin();
			em.merge(Student);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
			throw e;
		} finally {
			em.close();
		}
	}

	public void delete(String id) throws Exception {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin();
			Student Student = em.find(Student.class, id);
			em.remove(Student);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
		} finally {
			em.close();
		}
	}

	public Student findById(String id) {
		EntityManager em = JpaUtils.getEntityManager();
		Student entity = em.find(Student.class, id);
		return entity;
	}

//	public List<Student> findAll() {
//		EntityManager em = JpaUtils.getEntityManager();
//		String jpql = "SELECT u FROM Student u";
//		TypedQuery<Student> query = em.createQuery(jpql, Student.class);
//		List<Student> list = query.getResultList();
//		return list;
//	}

	public List<Student> findAll() {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<Student> query = em.createNamedQuery("Student.findAll", Student.class);
		return query.getResultList();
	}

	public List<Student> findAll(int page, int pageSize) {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<Student> query = em.createNamedQuery("Student.findAll", Student.class);
		query.setFirstResult(page * pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}

	public Student checkLogin(String id, String password) {
		EntityManager em = JpaUtils.getEntityManager();
		String japl = "select u from Student u where u.Id = :Id and u.Password = :Password";
		TypedQuery<Student> query = em.createQuery(japl, Student.class);
		query.setParameter("id", id);
		query.setParameter("password", password);
		return query.getSingleResult();
	}

	public List<Student> findByFullname(String fullname) {
		EntityManager em = JpaUtils.getEntityManager();
		String japl = "select u from Student u where u.Fullname like :Fullname";
		TypedQuery<Student> query = em.createQuery(japl, Student.class);
		query.setParameter("fullname", "%" + fullname + "%");
		return query.getResultList();
	}

	public int count() {
		EntityManager em = JpaUtils.getEntityManager();
		String japl = "select count(s) from Student s ";
		Query query = em.createQuery(japl);
		return ((Long) query.getSingleResult()).intValue();
	}
}
