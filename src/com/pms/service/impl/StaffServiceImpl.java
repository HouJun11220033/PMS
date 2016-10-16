package com.pms.service.impl;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;

import com.pms.hibernateutil.HibernateUtil;
import com.pms.model.Staff;

//public class StaffServiceImpl extends DaoSupportImpl<Staff> implements StaffService {
public class StaffServiceImpl {
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	private Session session;
	private Transaction transaction = HibernateUtil.getSession().beginTransaction();

	public Staff findByLoginNameAndPassword(String idNum, String pwd) {
		String passWord_MD5 = DigestUtils.md5Hex(pwd);
		return (Staff) HibernateUtil.getSession().createQuery("FROM Staff s WHERE s.idNum=? AND s.pwd=?")
				.setParameter(0, idNum).setParameter(1, passWord_MD5).uniqueResult();

	}

	@Test
	public void registerInfo(String userName, String passWord, String position, boolean sex, String IDCard,
			String phoneNum) {
		Staff staff = new Staff();
		staff.setJobNum(userName);
		staff.setPwd(passWord);
		staff.setPosition(position);
		staff.setSex(sex);
		staff.setIdCNum(IDCard);
		staff.setPhoneNum(phoneNum);
		staff.setAge(17);
		staff.setName("AAA");

		HibernateUtil.getSession().save(staff);
		transaction.commit();

	}

}
