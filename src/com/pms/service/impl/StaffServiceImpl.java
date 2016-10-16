package com.pms.service.impl;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import com.pms.base.DaoSupportImpl;
import com.pms.hibernateutil.HibernateUtil;
import com.pms.model.Staff;
import com.pms.service.StaffService;

@Service
public class StaffServiceImpl extends DaoSupportImpl<Staff> implements StaffService {

	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	private Session session;
	private Transaction transaction = HibernateUtil.getSession().beginTransaction();

	public Staff findByLoginNameAndPassword(String idNum, String pwd) {
		String passWord_MD5 = DigestUtils.md5Hex(pwd);
		return (Staff) HibernateUtil.getSession().createQuery("FROM Staff s WHERE s.idNum=? AND s.pwd=?")
				.setParameter(0, idNum).setParameter(1, passWord_MD5).uniqueResult();

	}

	public void registerInfo(Staff staff) {
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			session.save(staff);
			transaction.commit();

		} catch (Exception e) {
			System.out.println("staffDAO failure !");
			transaction.rollback(); // roll back transaction

		} finally {
			HibernateUtil.closeSession(session); // close session
		}

	}

	public void saveStaff(Staff staff) {
		try {
			session = HibernateUtil.getSession(); // get Session
			transaction = session.beginTransaction(); // begin Session
			session.save(staff); // save to DATABASE smw
			transaction.commit(); // commit transaction
			System.out.println("commit !!!");
		} catch (Exception e) {
			System.out.println("staffDAO failure !");
			transaction.rollback(); // roll back transaction
		} finally {
			HibernateUtil.closeSession(session); // close session
		}
	}

}
