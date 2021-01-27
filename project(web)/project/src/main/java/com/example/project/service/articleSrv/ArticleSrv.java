package com.example.project.service.articleSrv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.ArticleVO;
import com.example.project.model.BoardVO;
import com.example.project.repository.articleDao.ArticleDao;

@Service
public class ArticleSrv {

	@Autowired
	ArticleDao articleDao;

	public List<ArticleVO> getArticleList(int start, int end, String boardCode) {
		return articleDao.getArticleList(start, end, boardCode);
	}

	public void setArticle(ArticleVO articleVO) {
		articleDao.setArticle(articleVO);
	}

	public BoardVO getBoardOne(String boardCode) {
		return articleDao.getBoardOne(boardCode);
	}

	public int getArticleCount(String boardCode) {
		return articleDao.getArticleCount(boardCode);
	}

	public ArticleVO getArticleOne(ArticleVO articleVO) {
		return articleDao.getArticleOne(articleVO);
	}

	public int setArticleModify(ArticleVO articleVO) {
		return articleDao.setArticleModify(articleVO);
	}

	public void getArticleHit(ArticleVO articleVO) {
		articleDao.getArticleHit(articleVO);
	}

	public int setArticleDelete(int articleID, String boardCode) {
		return articleDao.setArticleDelete(articleID, boardCode);
	}

}
