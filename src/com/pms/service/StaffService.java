package com.pms.service;

import com.pms.base.DaoSupport;
import com.pms.model.Staff;

public interface StaffService extends DaoSupport<Staff> {
	public Staff findByLoginNameAndPassword(String idNum, String pwd);

	public void registerInfo(Staff staff);

	public boolean findIdNumByPhoneNum(String phoneNum, String idNum);

}
