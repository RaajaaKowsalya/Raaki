package com.asminds.emp.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class EmployeeModel 
{

	
	
    private String name;
   
 
    @Id
    private Long id;
    private String dob;
    private String designation;
    private String password;
    
    
    private String email;
    private Long phone;
    
    private String degree;
    private String institution;
    private int year;
    
    private String company;
    private String resignationdate;
    
    private String aadhaar;
    private String pancard;
    
    private String dependencyname;
    private String dependencyrelation;
    private Long dependencyphone;
    
   
	
	public EmployeeModel(String name, Long id, String dob, String designation, String password, String email,
			Long phone, String degree, String institution, int year, String company, String resignationdate,
			String aadhaar, String pancard, String dependencyname, String dependencyrelation, Long dependencyphone) {
		super();
		this.name = name;
		this.id = id;
		this.dob = dob;
		this.designation = designation;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.degree = degree;
		this.institution = institution;
		this.year = year;
		this.company = company;
		this.resignationdate = resignationdate;
		this.aadhaar = aadhaar;
		this.pancard = pancard;
		this.dependencyname = dependencyname;
		this.dependencyrelation = dependencyrelation;
		this.dependencyphone = dependencyphone;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getDob() {
		return dob;
	}



	public void setDob(String dob) {
		this.dob = dob;
	}



	public String getDesignation() {
		return designation;
	}



	public void setDesignation(String designation) {
		this.designation = designation;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Long getPhone() {
		return phone;
	}



	public void setPhone(Long phone) {
		this.phone = phone;
	}



	public String getDegree() {
		return degree;
	}



	public void setDegree(String degree) {
		this.degree = degree;
	}



	public String getInstitution() {
		return institution;
	}



	public void setInstitution(String institution) {
		this.institution = institution;
	}



	public int getYear() {
		return year;
	}



	public void setYear(int year) {
		this.year = year;
	}



	public String getCompany() {
		return company;
	}



	public void setCompany(String company) {
		this.company = company;
	}



	public String getResignationdate() {
		return resignationdate;
	}



	public void setResignationdate(String resignationdate) {
		this.resignationdate = resignationdate;
	}



	public String getAadhaar() {
		return aadhaar;
	}



	public void setAadhaar(String aadhaar) {
		this.aadhaar = aadhaar;
	}



	public String getPancard() {
		return pancard;
	}



	public void setPancard(String pancard) {
		this.pancard = pancard;
	}



	public String getDependencyname() {
		return dependencyname;
	}



	public void setDependencyname(String dependencyname) {
		this.dependencyname = dependencyname;
	}



	public String getDependencyrelation() {
		return dependencyrelation;
	}



	public void setDependencyrelation(String dependencyrelation) {
		this.dependencyrelation = dependencyrelation;
	}



	public Long getDependencyphone() {
		return dependencyphone;
	}



	public void setDependencyphone(Long dependencyphone) {
		this.dependencyphone = dependencyphone;
	}



	public EmployeeModel() {
		super();
	}
    
    
   
	
	
}
