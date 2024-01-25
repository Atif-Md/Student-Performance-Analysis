package com.bean;

public class RequirementBean {
private String domain,skills,qualification,uid;
public String getUid() {
	return uid;
}
public void setUid(String uid) {
	this.uid = uid;
}
private String criteria;

public String getCriteria() {
	return criteria;
}
public void setCriteria(String criteria) {
	this.criteria = criteria;
}
public String getDomain() {
	return domain;
}
public void setDomain(String domain) {
	this.domain = domain;
}
public String getSkills() {
	return skills;
}
public void setSkills(String skills) {
	this.skills = skills;
}
public String getQualification() {
	return qualification;
}
public void setQualification(String qualification) {
	this.qualification = qualification;
}
}