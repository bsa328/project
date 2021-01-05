package com.example.project.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberVO {
	private int memberNum;
	private String memberName;
	private String memberID;
	private String memberPasswd;
	private Date memberRegdate;

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberID() {
		return memberID;
	}

	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}

	public String getMemberPasswd() {
		return memberPasswd;
	}

	public void setMemberPasswd(String memberPasswd) {
		this.memberPasswd = memberPasswd;
	}

	public String getMemberRegdate() {
		return sdf.format(memberRegdate);
	}

	public void setMemberRegdate(Date memberRegdate) {
		this.memberRegdate = memberRegdate;
	}

}
