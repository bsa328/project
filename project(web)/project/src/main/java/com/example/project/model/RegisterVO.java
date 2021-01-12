package com.example.project.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class RegisterVO {
	private int empID;
	private String empBuseoCode;
	private String empBuseoName;
	private String empGradeCode;
	private String empGradeName;
	private String empNum;
	private String empName;
	private String empPwd;
	private String empEnter;
	private Date empRegdate;
	private String empConfirm;
	private int empAuth;
	private String empPhoto;

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public int getEmpID() {
		return empID;
	}

	public void setEmpID(int empID) {
		this.empID = empID;
	}

	public String getEmpBuseoCode() {
		return empBuseoCode;
	}

	public void setEmpBuseoCode(String empBuseoCode) {
		this.empBuseoCode = empBuseoCode;
	}

	public String getEmpBuseoName() {
		return empBuseoName;
	}

	public void setEmpBuseoName(String empBuseoName) {
		this.empBuseoName = empBuseoName;
	}

	public String getEmpGradeCode() {
		return empGradeCode;
	}

	public void setEmpGradeCode(String empGradeCode) {
		this.empGradeCode = empGradeCode;
	}

	public String getEmpGradeName() {
		return empGradeName;
	}

	public void setEmpGradeName(String empGradeName) {
		this.empGradeName = empGradeName;
	}

	public String getEmpNum() {
		return empNum;
	}

	public void setEmpNum(String empNum) {
		this.empNum = empNum;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpPwd() {
		return empPwd;
	}

	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}

	public String getEmpEnter() {
		return empEnter;
	}

	public void setEmpEnter(String empEnter) {
		this.empEnter = empEnter;
	}

	public String getEmpRegdate() {
		return sdf.format(empRegdate);
	}

	public void setEmpRegdate(Date empRegdate) {
		this.empRegdate = empRegdate;
	}

	public String getEmpConfirm() {
		return empConfirm;
	}

	public void setEmpConfirm(String empConfirm) {
		this.empConfirm = empConfirm;
	}

	public int getEmpAuth() {
		return empAuth;
	}

	public void setEmpAuth(int empAuth) {
		this.empAuth = empAuth;
	}

	public String getEmpPhoto() {
		return empPhoto;
	}

	public void setEmpPhoto(String empPhoto) {
		this.empPhoto = empPhoto;
	}

	public SimpleDateFormat getSdf() {
		return sdf;
	}

	public void setSdf(SimpleDateFormat sdf) {
		this.sdf = sdf;
	}

}
