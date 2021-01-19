package com.example.project.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {
	private int boardID;
	private String boardGroup;
	private String boardCode;
	private String boardManager;
	private String boardColor;
	private String boardTitle;
	private String boardRead;
	private String boardWrite;
	private Date boardRegdate;

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public int getBoardID() {
		return boardID;
	}

	public void setBoardID(int boardID) {
		this.boardID = boardID;
	}

	public String getBoardGroup() {
		return boardGroup;
	}

	public void setBoardGroup(String boardGroup) {
		this.boardGroup = boardGroup;
	}

	public String getBoardCode() {
		return boardCode;
	}

	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}

	public String getBoardManager() {
		return boardManager;
	}

	public void setBoardManager(String boardManager) {
		this.boardManager = boardManager;
	}

	public String getBoardColor() {
		return boardColor;
	}

	public void setBoardColor(String boardColor) {
		this.boardColor = boardColor;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardRead() {
		return boardRead;
	}

	public void setBoardRead(String boardRead) {
		this.boardRead = boardRead;
	}

	public String getBoardWrite() {
		return boardWrite;
	}

	public void setBoardWrite(String boardWrite) {
		this.boardWrite = boardWrite;
	}

	public String getBoardRegdate() {
		return sdf.format(boardRegdate);
	}

	public void setBoardRegdate(Date boardRegdate) {
		this.boardRegdate = boardRegdate;
	}

}
