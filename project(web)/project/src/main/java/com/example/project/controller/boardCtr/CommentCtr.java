package com.example.project.controller.boardCtr;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.project.model.CommentVO;
import com.example.project.service.commentSrv.CommentSrv;

@Controller
@RequestMapping("/comment")
public class CommentCtr {

	@Autowired
	CommentSrv commentSrv;

	@RequestMapping(value = "/comment_insert")
	@ResponseBody
	public void setComment(@ModelAttribute CommentVO commentVO) {
		commentSrv.setComment(commentVO);
	}

	@RequestMapping("/comment_list")
	@ResponseBody
	public Map<String, Object> getCommentList(@ModelAttribute CommentVO commentVO) {
		List<CommentVO> list = commentSrv.getCommentList(commentVO);
		int count = commentSrv.getCommentCount(commentVO);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);

		return map;
	}

	@RequestMapping("/comment_delete")
	@ResponseBody
	public void setDelete(@ModelAttribute CommentVO commentVO) {
		commentSrv.setCommentDelete(commentVO);
	}

	@RequestMapping("/comment_modify")
	@ResponseBody
	public void setModify(@ModelAttribute CommentVO commentVO) {
		commentSrv.setCommentModify(commentVO);
	}

}
