package com.pms.hibernateutil;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Generate {
	// HibernateUtil hibernateUtil = new HibernateUtil();

	private Transaction transaction;
	private Session session;

	@Before
	public void init() {

		session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println("init!!!!!!!!!!!!!!");
	}

	@After
	public void destory() {

		transaction.commit();
		session.close();
		HibernateUtil.getSessionFactory().close();
		System.out.println("destory!!!!!!!!!!!!!!!!!!!!!!!");
		// sessionFactory.close();

	}

	@Test
	public void generateDB() {
		System.out.println("generateDB!!!!!!!!!!!!!!!!!!!!!!!");

	}

}
