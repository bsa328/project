package com.example.project.repository.articleDao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.ArticleVO;
import com.example.project.model.BoardVO;

@Repository
public class ArticleDao {

	@Autowired
	private SqlSession sqlSession;

	public void setArticle(ArticleVO articleVO) {
		sqlSession.insert("article.setArticle", articleVO);
	}

	public BoardVO getBoardOne(String boardCode) {
		return sqlSession.selectOne("article.getBoardOne", boardCode);
	}

}
