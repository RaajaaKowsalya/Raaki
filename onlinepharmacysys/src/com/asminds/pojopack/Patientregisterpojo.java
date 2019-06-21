package com.asminds.pojopack;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Patientregisterpojo 
{

	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	int patientid;
	String patientname;
	String username;
	String password;
	public Patientregisterpojo(int id, int patientid, String patientname, String username, String password) {
		super();
		this.id = id;
		this.patientid = patientid;
		this.patientname = patientname;
		this.username = username;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPatientid() {
		return patientid;
	}
	public void setPatientid(int patientid) {
		this.patientid = patientid;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
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
	public Patientregisterpojo()
	{
		super();
	}
	

}
