package com.pms.hibernateutil;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.pms.model.Customer;

public class Generate {
	private SessionFactory sessionFactory;
	private Session session;
	private Transaction transaction;

	// @Before
	// public void init() {
	// Configuration configuration = new Configuration().configure();
	// ServiceRegistry serviceRegistry = new
	// ServiceRegistryBuilder().applySettings(
	// configuration.getProperties()).build();
	// sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	// session = sessionFactory.openSession();
	// transaction = session.beginTransaction();
	// }
	//
	// @After
	// public void destroy() {
	// transaction.commit();
	// session.close();
	// sessionFactory.close();
	// }

	@Before
	public void init() {
		sessionFactory = HibernateUtil.getSessionFactory();
		session = HibernateUtil.getSession();
		transaction = session.beginTransaction();
		System.out.println("init!!!!!!!!!!!!!!");
	}

	@After
	public void destory() {
		if (transaction == null) {
			System.out.println("transaction is null");
		}
		transaction.commit();
		session.close();
		sessionFactory.close();
		System.out.println("destory!!!!!!!!!!!!!!!!!!!!!!!");

	}

	@Test
	public void generateDB() {
		Customer customer = new Customer();
		customer.setAge(2);
		// customer.setCustomerId(188);
		customer.setIdNum(67);
		customer.setName("HouJun");
		customer.setPhoneNum("12312");
		customer.setPwd("1232121");
		customer.setSex(false);
		session.save(customer);

	}

}
