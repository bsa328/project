package com.example.project.repository.commentDao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.CommentVO;

@Repository
public class CommentDao {

	@Autowired
	SqlSession sqlSession;

	public void setComment(CommentVO commentVO) {
		sqlSession.insert("comment.setComment", commentVO);
	}

	public int getCommentCount(CommentVO commentVO) {
		return sqlSession.selectOne("comment.getCommentCount", commentVO);
	}

	public List<CommentVO> getCommentList(CommentVO commentVO) {
		return sqlSession.selectList("comment.getCommentList", commentVO);
	}

	public void setCommentDelete(CommentVO commentVO) {
		sqlSession.delete("comment.setCommentDelete", commentVO);
	}

	public void setCommentModify(CommentVO commentVO) {
		sqlSession.update("comment.setCommentModify", commentVO);
	}

}
