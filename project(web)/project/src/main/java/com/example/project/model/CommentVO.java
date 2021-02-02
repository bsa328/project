package com.example.project.model;

public class CommentVO {
	private int commentID;
	private int articleID;
	private String commentWriter;
	private String commentContent;
	private String commentRegdate;
	private String boardCode;

	public int getCommentID() {
		return commentID;
	}

	public void setCommentID(int commentID) {
		this.commentID = commentID;
	}

	public int getArticleID() {
		return articleID;
	}

	public void setArticleID(int articleID) {
		this.articleID = articleID;
	}

	public String getCommentWriter() {
		return commentWriter;
	}

	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentRegdate() {
		return commentRegdate;
	}

	public void setCommentRegdate(String commentRegdate) {
		this.commentRegdate = commentRegdate;
	}

	public String getBoardCode() {
		return boardCode;
	}

	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}

}
