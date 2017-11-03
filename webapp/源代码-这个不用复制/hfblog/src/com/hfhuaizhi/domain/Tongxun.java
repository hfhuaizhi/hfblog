package com.hfhuaizhi.domain;

public class Tongxun {
	public int id;
	public String name;
	public String email;
	public String phone;
	public String work;
	public String username;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	@Override
	public String toString() {
		return "Tongxun [id=" + id + ", name=" + name + ", email=" + email
				+ ", phone=" + phone + ", work=" + work + ", username="
				+ username + "]";
	}
	

}
