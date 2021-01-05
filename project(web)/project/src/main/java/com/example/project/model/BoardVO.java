package com.example.project.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {
	private int boardNum;
	private String boardTitle;
	private String boardWriter;
	private String boardContent;
	private Date boardRegdate;
	private int boardViews;

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardRegdate() {
		return sdf.format(boardRegdate);
	}

	public void setBoardRegdate(Date boardRegdate) {
		this.boardRegdate = boardRegdate;
	}

	public int getBoardViews() {
		return boardViews;
	}

	public void setBoardViews(int boardViews) {
		this.boardViews = boardViews;
	}

}
