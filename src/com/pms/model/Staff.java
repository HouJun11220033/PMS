package com.pms.model;

public class Staff {
	private Integer id;
	private String name;
	private String pwd;
	private String phoneNum;
	private int age;
	private boolean sex;
	private String idCNum;
	private String jobNum;
	private String position;

	public Staff(Integer id, String name, String pwd, String phoneNum, int age, boolean sex, String idCNum,
			String jobNum, String position) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.phoneNum = phoneNum;
		this.age = age;
		this.sex = sex;
		this.idCNum = idCNum;
		this.jobNum = jobNum;
		this.position = position;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

		this.position = position;
	}

	public Staff() {
		super();
	}

	public String getIdCNum() {
		return idCNum;
	}

	public void setIdCNum(String idCNum) {
		this.idCNum = idCNum;
	}

	public String getJobNum() {
		return jobNum;
	}

	public void setJobNum(String jobNum) {
		this.jobNum = jobNum;
	}

	@Override
	public String toString() {
		return "Staff [id=" + id + ", name=" + name + ", pwd=" + pwd + ", phoneNum=" + phoneNum + ", age="
				+ age + ", sex=" + sex + ", idCNum=" + idCNum + ", jobNum=" + jobNum + ", position="
				+ position + "]";
	}

}
