package com.po;
//JavaBeans���ԭ��
//1.������
public class Users {
	//2.����˽��
	private String username;
	private String password;
	
	//3.�޲εĹ��й��췽��
	public Users(){}

	//4.getter��setter��װ
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
