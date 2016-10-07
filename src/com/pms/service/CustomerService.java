package com.pms.service;

import com.pms.base.DaoSupport;
import com.pms.model.Customer;

public interface CustomerService extends DaoSupport<Customer> {
	public Customer findByLoginNameAndPassword(String userName, String passWord);

}
