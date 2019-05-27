package com.zjut.azure;

import java.io.Serializable;

import javax.management.loading.PrivateClassLoader;

public class Administrator implements Serializable{

	private String num;
	private String name;
	private String email;
	private String password;
	
	
	public Administrator() {
		// TODO Auto-generated constructor stub
	}

	

	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
