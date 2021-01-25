package com.example.project.repository.boardDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.BoardVO;

@Repository
public class BoardDao {

	@Autowired
	SqlSession sqlSession;

	public void setBoard(BoardVO boardVO) {
		sqlSession.insert("board.setBoard", boardVO);
	}

	public void createArticle(String boardCode) {
		String str = "create table article_" + boardCode;
		str += "(article_id int not null auto_increment primary key,";
		str += "article_division char(1),";
		str += "article_title varchar(300) not null,";
		str += "article_writer varchar(20) not null,";
		str += "article_content text,";
		str += "article_regdate datetime,";
		str += "article_hit int default 0,";
		str += "article_file_name varchar(300),";
		str += "article_file_ori_name varchar(300),";
		str += "article_filr_url varchar(500),";
		str += "ref int);";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.update("board.createArticle", map);
	}

	public void createComment(String boardCode) {
		String str = "create table comment_" + boardCode;
		str += "(comment_id int not null auto_increment primary key,";
		str += "article_id int not null,";
		str += "comment_writer varchar(20),";
		str += "comment_content text,";
		str += "comment_regdate datetime);";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.update("board.createComment", map);
	}

	public List<BoardVO> getBoardList(int start, int end) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);

		return sqlSession.selectList("board.getBoardList", map);
	}

	public int codeCheck(String boardCode) {
		return sqlSession.selectOne("board.codeCheck", boardCode);
	}

	public int getBoardCount() {
		return sqlSession.selectOne("board.getBoardCount");
	}

	public void setBoardDelete(String boardCode) {
		sqlSession.delete("board.setBoardDelete", boardCode);
	}

	public void dropArticle(String boardCode) {
		String str = "drop table article_" + boardCode;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.dropArticle", map);
	}

	public void dropComment(String boardCode) {
		String str = "drop table comment_" + boardCode;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.dropComment", map);
	}

}