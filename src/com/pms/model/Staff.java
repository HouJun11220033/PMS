package com.pms.model;

public class Staff {
	private Integer staffId;
	private String name;
	private String pwd;
	private String phoneNum;
	private int age;
	private boolean sex;
	private Integer idCNum;
	private Integer jobNum;
	private String position;

	public Integer getStaffId() {
		return staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}

	public Integer getIdCNum() {
		return idCNum;
	}

	public void setIdCNum(Integer idCNum) {
		this.idCNum = idCNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public boolean isSex() {
		return sex;
	}

	public void setSex(boolean sex) {
		this.sex = sex;
	}

	public Integer getJobNum() {
		return jobNum;
	}

	public void setJobNum(Integer jobNum) {
		this.jobNum = jobNum;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Staff(String name, String pwd, String phoneNum, int age, boolean sex, Integer idNum,
			Integer jobNum, String position) {
		super();
		this.name = name;
		this.pwd = pwd;
		this.phoneNum = phoneNum;
		this.age = age;
		this.sex = sex;

		this.jobNum = jobNum;
		this.position = position;
	}

	public Staff() {
		super();
	}

	@Override
	public String toString() {
		return "Staff [name=" + name + ", pwd=" + pwd + ", phoneNum=" + phoneNum + ", age=" + age + ", sex="
				+ sex + ", idNum=" + ", jobNum=" + jobNum + ", position=" + position + "]";
	}

}
