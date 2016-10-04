package com.pms.hibernateutil;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.junit.Test;

public class Generate {
	// HibernateUtil hibernateUtil = new HibernateUtil();

	// private Transaction transaction;
	// private Session session;

	// @Before
	// public void init() {
	//
	// session = HibernateUtil.getSessionFactory().openSession();
	// Transaction transaction = session.beginTransaction();
	// System.out.println("init!!!!!!!!!!!!!!");
	// }
	//
	// @After
	// public void destory() {
	//
	// transaction.commit();
	// session.close();
	// HibernateUtil.getSessionFactory().close();
	// System.out.println("destory!!!!!!!!!!!!!!!!!!!!!!!");
	// // sessionFactory.close();
	//
	// }

	@Test
	public void generateDB() {
		System.out.println("generateDB!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println("test...");

		// 1. 创建一个 SessionFactory 对象
		SessionFactory sessionFactory = null;

		// 1). 创建 Configuration 对象: 对应 hibernate 的基本配置信息和 对象关系映射信息
		Configuration configuration = new Configuration().configure();

		// 4.0 之前这样创建
		// sessionFactory = configuration.buildSessionFactory();

		// 2). 创建一个 ServiceRegistry 对象: hibernate 4.x 新添加的对象
		// hibernate 的任何配置和服务都需要在该对象中注册后才能有效.
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(
				configuration.getProperties()).build();

		// 3).
		sessionFactory = configuration.buildSessionFactory(serviceRegistry);

		// 2. 创建一个 Session 对象
		Session session = sessionFactory.openSession();

		// 3. 开启事务
		Transaction transaction = session.beginTransaction();

		// 4. 执行保存操作
		// News news = new News("Java12345", "ATGUIGU", new Date(new
		// java.util.Date().getTime()));
		// session.save(news);

		// 5. 提交事务
		transaction.commit();

		// 6. 关闭 Session
		session.close();

		// 7. 关闭 SessionFactory 对象
		sessionFactory.close();

	}

}
