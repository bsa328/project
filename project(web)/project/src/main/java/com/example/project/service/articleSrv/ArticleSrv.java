package com.example.project.service.articleSrv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.ArticleVO;
import com.example.project.model.BoardVO;
import com.example.project.repository.articleDao.ArticleDao;

@Service
public class ArticleSrv {

	@Autowired
	ArticleDao articleDao;

	public void setArticle(ArticleVO articleVO) {
		articleDao.setArticle(articleVO);
	}

	public BoardVO getBoardOne(String boardCode) {
		return articleDao.getBoardOne(boardCode);
	}
}
