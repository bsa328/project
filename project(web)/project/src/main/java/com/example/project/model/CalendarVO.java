package com.example.project.model;

import java.text.SimpleDateFormat;

public class CalendarVO {
	private int calID;
	private String calStartDate;
	private String calEndDate;
	private String calWriter;
	private String calContent;

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public int getCalID() {
		return calID;
	}

	public void setCalID(int calID) {
		this.calID = calID;
	}

	public String getCalStartDate() {
		return sdf.format(calStartDate);
	}

	public void setCalStartDate(String calStartDate) {
		this.calStartDate = calStartDate;
	}

	public String getCalEndDate() {
		return sdf.format(calEndDate);
	}

	public void setCalEndDate(String calEndDate) {
		this.calEndDate = calEndDate;
	}

	public String getCalWriter() {
		return calWriter;
	}

	public void setCalWriter(String calWriter) {
		this.calWriter = calWriter;
	}

	public String getCalContent() {
		return calContent;
	}

	public void setCalContent(String calContent) {
		this.calContent = calContent;
	}

}
