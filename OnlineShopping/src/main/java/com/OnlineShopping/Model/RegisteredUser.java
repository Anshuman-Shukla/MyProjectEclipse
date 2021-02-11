package com.OnlineShopping.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RegisteredUser {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private long phoneno;
	private String gender;
	private String password;

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

	public long getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(long phoneno) {
		this.phoneno = phoneno;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public RegisteredUser(int id, String name, String email, long phoneno, String gender, String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phoneno = phoneno;
		this.gender = gender;
		this.password = password;
	}

	@Override
	public String toString() {
		return "RegisteredUser [id=" + id + ", name=" + name + ", email=" + email + ", phoneno=" + phoneno + ", gender="
				+ gender + ", password=" + password + "]";
	}

	public RegisteredUser() {
		super();
		// TODO Auto-generated constructor stub
	}

}
