package com.example.project.service.commentSrv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.CommentVO;
import com.example.project.repository.commentDao.CommentDao;

@Service
public class CommentSrv {

	@Autowired
	CommentDao commentDao;

	public void setComment(CommentVO commentVO) {
		commentDao.setComment(commentVO);
	}

	public int getCommentCount(CommentVO commentVO) {
		return commentDao.getCommentCount(commentVO);
	}

	public List<CommentVO> getCommentList(CommentVO commentVO) {
		return commentDao.getCommentList(commentVO);
	}

	public void setCommentDelete(CommentVO commentVO) {
		commentDao.setCommentDelete(commentVO);
	}

	public void setCommentModify(CommentVO commentVO) {
		commentDao.setCommentModify(commentVO);
	}

}
