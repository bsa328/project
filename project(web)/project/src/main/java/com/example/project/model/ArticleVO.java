package com.example.project.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ArticleVO {
	private int articleID;
	private String articleDivision;
	private String articleTitle;
	private String articleWriter;
	private String articleContent;
	private Date articleRegdate;
	private int articleHit;
	private String articleFileName;
	private String articleFileOriName;
	private String articleFileUrl;

	private int ref;
	private int cnt;
	private String boardCode;

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public int getArticleID() {
		return articleID;
	}

	public void setArticleID(int articleID) {
		this.articleID = articleID;
	}

	public String getArticleDivision() {
		return articleDivision;
	}

	public void setArticleDivision(String articleDivision) {
		this.articleDivision = articleDivision;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleWriter() {
		return articleWriter;
	}

	public void setArticleWriter(String articleWriter) {
		this.articleWriter = articleWriter;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public String getArticleRegdate() {
		return sdf.format(articleRegdate);
	}

	public void setArticleRegdate(Date articleRegdate) {
		this.articleRegdate = articleRegdate;
	}

	public int getArticleHit() {
		return articleHit;
	}

	public void setArticleHit(int articleHit) {
		this.articleHit = articleHit;
	}

	public String getArticleFileName() {
		return articleFileName;
	}

	public void setArticleFileName(String articleFileName) {
		this.articleFileName = articleFileName;
	}

	public String getArticleFileOriName() {
		return articleFileOriName;
	}

	public void setArticleFileOriName(String articleFileOriName) {
		this.articleFileOriName = articleFileOriName;
	}

	public String getArticleFileUrl() {
		return articleFileUrl;
	}

	public void setArticleFileUrl(String articleFileUrl) {
		this.articleFileUrl = articleFileUrl;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getBoardCode() {
		return boardCode;
	}

	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}

}
