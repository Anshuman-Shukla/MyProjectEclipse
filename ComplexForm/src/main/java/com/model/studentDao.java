package com.model;

import java.util.Date;
import java.util.List;



public class studentDao {
	
	private String name;
	private long id;
	
	private Date date;
	private List<String> courses;
	private String gender;
	private String type;
	@Override
	public String toString() {
		return "studentDao [name=" + name + ", id=" + id + ", date=" + date + ", courses=" + courses + ", gender="
				+ gender + ", type=" + type + "]";
	}
	public studentDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	public studentDao(String name, long id, Date date, List<String> courses, String gender, String type) {
		super();
		this.name = name;
		this.id = id;
		this.date = date;
		this.courses = courses;
		this.gender = gender;
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public List<String> getCourses() {
		return courses;
	}
	public void setCourses(List<String> courses) {
		this.courses = courses;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

}
