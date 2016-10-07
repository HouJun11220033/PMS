package com.pms.hibernateutil;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {
	private static final SessionFactory sessionFactory;
	static {
		Configuration configuration = new Configuration().configure();
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(
				configuration.getProperties()).build();
		sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		System.out.println("init!!!");
	}

	public static SessionFactory getSessionFactory() {
		System.out.println("sessionFactory!!!");
		return sessionFactory;
	}

	public static Session getSession() {
		System.out.println("session!!!");
		return sessionFactory.openSession();
	}

}
