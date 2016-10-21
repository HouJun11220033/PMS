//package com.pms.service.impl;
//
//import org.apache.commons.codec.digest.DigestUtils;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import com.pms.base.DaoSupportImpl;
//import com.pms.hibernateutil.HibernateUtil;
//import com.pms.model.Customer;
//import com.pms.model.Staff;
//import com.pms.service.CustomerService;
//
//@Service
//@Transactional
//public class StaffServiceImpl extends DaoSupportImpl<Staff> implements
//		CustomerService {
//
//	@Override
//	public Staff findByLoginNameAndPassword(String idCNum, String pwd) {
//		String passWord_MD5 = DigestUtils.md5Hex(pwd);
//		return (Staff) HibernateUtil.getSession()
//				.createQuery("FROM Customer c WHERE c.idCNum=? AND c.pwd=?")
//				.setParameter(0, idCNum).setParameter(1, passWord_MD5)
//				.uniqueResult();
//
//	}
//
//}
