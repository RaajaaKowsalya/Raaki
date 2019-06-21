package com.asminds.emp.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class LeaveApplyModel {


@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int gid;
	 private Long id;
private String leavefrom;
private String leaveto;
private String leavetype;
private String reason;

public int getGid() {
	return gid;
}
public void setGid(int gid) {
	this.gid = gid;
}
public Long getId() {
	return id;
}
public void setId(Long id) {
	this.id = id;
}

public String getLeavefrom() {
	return leavefrom;
}
public void setLeavefrom(String leavefrom) {
	this.leavefrom = leavefrom;
}
public String getLeaveto() {
	return leaveto;
}
public void setLeaveto(String leaveto) {
	this.leaveto = leaveto;
}
public String getLeavetype() {
	return leavetype;
}
public void setLeavetype(String leavetype) {
	this.leavetype = leavetype;
}
public String getReason() {
	return reason;
}
public void setReason(String reason) {
	this.reason = reason;
}


public LeaveApplyModel(int gid, Long id, String leavefrom, String leaveto, String leavetype, String reason) {
	super();
	this.gid = gid;
	this.id = id;
	this.leavefrom = leavefrom;
	this.leaveto = leaveto;
	this.leavetype = leavetype;
	this.reason = reason;
}
public LeaveApplyModel() {
	super();
}





}
