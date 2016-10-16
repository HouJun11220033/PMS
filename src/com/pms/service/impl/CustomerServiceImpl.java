package com.pms.service.impl;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pms.base.DaoSupportImpl;
import com.pms.hibernateutil.HibernateUtil;
import com.pms.model.Customer;
import com.pms.service.CustomerService;

@Service
@Transactional
public class CustomerServiceImpl extends DaoSupportImpl<Customer> implements CustomerService {

	@Override
	public Customer findByLoginNameAndPassword(String idNum, String pwd) {
		String passWord_MD5 = DigestUtils.md5Hex(pwd);
		return (Customer) HibernateUtil.getSession()
				.createQuery("FROM Customer c WHERE c.idNum=? AND c.pwd=?").setParameter(0, idNum)
				.setParameter(1, passWord_MD5).uniqueResult();

	}

}
