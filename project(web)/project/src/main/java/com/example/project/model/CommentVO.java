package com.example.project.model;

public class CommentVO {
	private int commentID;
	private int articleID;
	private String commentWriter;
	private String comentContent;
	private String commentRegdate;

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

	public String getComentContent() {
		return comentContent;
	}

	public void setComentContent(String comentContent) {
		this.comentContent = comentContent;
	}

	public String getCommentRegdate() {
		return commentRegdate;
	}

	public void setCommentRegdate(String commentRegdate) {
		this.commentRegdate = commentRegdate;
	}

}
