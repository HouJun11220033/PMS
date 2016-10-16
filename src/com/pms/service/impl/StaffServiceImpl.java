package com.pms.service.impl;

import org.apache.commons.codec.digest.DigestUtils;

import com.pms.base.DaoSupportImpl;
import com.pms.hibernateutil.HibernateUtil;
import com.pms.model.Staff;
import com.pms.service.StaffService;

public class StaffServiceImpl extends DaoSupportImpl<Staff> implements StaffService {


	@Override
	public Staff findByLoginNameAndPassword(String idNum, String pwd) {
		String passWord_MD5 = DigestUtils.md5Hex(pwd);
		return (Staff) HibernateUtil.getSession().createQuery("FROM Staff s WHERE s.idNum=? AND s.pwd=?")
				.setParameter(0, idNum).setParameter(1, passWord_MD5).uniqueResult();

	}

	@Override
	public Staff registerInfo(String userName, String passWord, String position, boolean sex, String IDCard,
			String phoneNum) {
		Staff staff = new Staff();
		staff.setJobNum(userName);
		staff.setPwd(passWord);
		staff.setPosition(position);
		staff.setSex(sex);
		staff.setIdCNum(IDCard);
		staff.setPhoneNum(phoneNum);
		HibernateUtil.getSession().save(staff);

		return staff;
	}

}
