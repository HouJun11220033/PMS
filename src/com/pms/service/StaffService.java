package com.pms.service;

import com.pms.base.DaoSupport;
import com.pms.model.Staff;

public interface StaffService extends DaoSupport<Staff> {
	public Staff findByLoginNameAndPassword(String idNum, String pwd);

	public void registerInfo(String userName, String passWord, String position, boolean sex, String IDCard,
			String phoneNum);

}
