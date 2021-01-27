package com.example.project.repository.articleDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.ArticleVO;
import com.example.project.model.BoardVO;

@Repository
public class ArticleDao {

	@Autowired
	private SqlSession sqlSession;

	public List<ArticleVO> getArticleList(int start, int end, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("boardCode", boardCode);

		return sqlSession.selectList("article.getArticleList", map);
	}

	public void setArticle(ArticleVO articleVO) {
		sqlSession.insert("article.setArticle", articleVO);
	}

	public BoardVO getBoardOne(String boardCode) {
		return sqlSession.selectOne("article.getBoardOne", boardCode);
	}

	public int getArticleCount(String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardCode", boardCode);

		return sqlSession.selectOne("article.getArticleCount", map);
	}

	public ArticleVO getArticleOne(ArticleVO articleVO) {
		return sqlSession.selectOne("article.getArticleOne", articleVO);
	}

	public int setArticleModify(ArticleVO articleVO) {
		return sqlSession.update("article.setArticleModify", articleVO);
	}

	public void getArticleHit(ArticleVO articleVO) {
		sqlSession.update("article.getArticleHit", articleVO);
	}

	public int setArticleDelete(int articleID, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("articleID", articleID);
		map.put("boardCode", boardCode);
		return sqlSession.delete("article.setArticleDelete", map);
	}

}