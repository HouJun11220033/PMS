package com.pms.hibernateutil;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.pms.model.Staff;

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
		System.out.println(transaction.toString());
		System.out.println("init");
	}

	@After
	public void destory() {
		if (transaction == null) {
			System.out.println("transaction is null");
		}
		transaction.commit();
		session.close();
		sessionFactory.close();
		System.out.println("destory");

	}

	@Test
	public void generateDB() {
		Staff staff = new Staff();
		staff.setAge(20);
		// customer.setCustomerId(188);
		staff.setJobNum("123");
		staff.setName("HouJun");
		staff.setPhoneNum("13069316562");
		staff.setPwd("21232f297a57a5a743894a0e4a801fc3");
		staff.setSex(true);
		// session.flush();
		session.save(staff);

	}

}
