package com.asminds.pojopack;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Patientdetailspojo
{
	@Id
	@GeneratedValue
	@Column
	int id;
	String name;
	int phone;
	String address;
	String doctor;
	String symp;
		public Patientdetailspojo()
	{
		super();
	}
		public Patientdetailspojo(String name, int phone, String address, String doctor, String symp) {
			super();
			this.name = name;
			this.phone = phone;
			this.address = address;
			this.doctor = doctor;
			this.symp = symp;
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
		public int getPhone() {
			return phone;
		}
		public void setPhone(int phone) {
			this.phone = phone;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getDoctor() {
			return doctor;
		}
		public void setDoctor(String doctor) {
			this.doctor = doctor;
		}
		public String getSymp() {
			return symp;
		}
		public void setSymp(String symp) {
			this.symp = symp;
		}
	
}
