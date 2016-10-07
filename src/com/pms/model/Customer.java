package com.pms.model;

public class Customer {
	private Integer id;
	private String idNum;
	private String name;
	private String pwd;
	private String phoneNum;
	private int age;
	private boolean sex;

	public String getIdNum() {
		return idNum;
	}

	public void setIdNum(String idNum) {
		this.idNum = idNum;
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

	public Customer(String name, String pwd, String phoneNum, int age, boolean sex, String idNum) {
		super();
		this.name = name;
		this.pwd = pwd;
		this.phoneNum = phoneNum;
		this.age = age;
		this.sex = sex;
		this.idNum = idNum;
	}

	public Customer() {
		super();
	}

	@Override
	public String toString() {
		return "Customer [name=" + name + ", pwd=" + pwd + ", phoneNum=" + phoneNum + ", age=" + age
				+ ", sex=" + sex + ", idNum=" + idNum + "]";
	}

}
