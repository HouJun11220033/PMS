package com.pms.service.impl;

import org.apache.commons.codec.digest.DigestUtils;

import com.pms.base.DaoSupportImpl;
import com.pms.hibernateutil.HibernateUtil;
import com.pms.model.Customer;
import com.pms.service.CustomerService;

public class CustomerServiceImpl extends DaoSupportImpl<Customer> implements CustomerService {

	@Override
	public Customer findByLoginNameAndPassword(String userName, String passWord) {
		String passWord_MD5 = DigestUtils.md5Hex(passWord);
		return (Customer) HibernateUtil.getSession()
				.createQuery("FROM Customer c WHERE c.userName=? AND c.passWord=?").setParameter(0, userName)
				.setParameter(1, passWord_MD5);

	}

}
