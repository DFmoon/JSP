package com.po;
//JavaBeans设计原则：
//1.公有类
public class Users {
	//2.属性私有
	private String username;
	private String password;
	
	//3.无参的公有构造方法
	public Users(){}

	//4.getter和setter封装
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
