package com.mycompany.myapp.review;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertReview(ReviewVO vo) {
		int result = sqlSession.insert("Review.insertReview", vo);
		return result;
	}

	public int deleteReview(int seq) {
		int result = sqlSession.delete("Review.deleteReview",  seq);
		return result;
	}

	public int updateReview(ReviewVO vo) {
		int result = sqlSession.update("Review.updateReview", vo);
		return result;
	}

	class BoardRowMapper implements RowMapper<ReviewVO> {
		@Override
		public ReviewVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			ReviewVO vo = new ReviewVO();
			vo.setSeq(rs.getInt("seq"));
			vo.setTitle(rs.getString("title"));
			vo.setContent(rs.getString("content"));
			vo.setWriter(rs.getString("writer"));
			vo.setCategory(rs.getString("category"));
			vo.setMenu(rs.getString("menu"));
			vo.setScore(rs.getInt("score"));
			vo.setRegdate(rs.getDate("regdate"));
			return vo;
		}
	}

	public ReviewVO getReview(int seq) {
		ReviewVO result = sqlSession.selectOne("Reivew.getReview", seq);
		return result;
	}

	public List<ReviewVO> getReviewList() {
		List<ReviewVO> result = sqlSession.selectList("Review.getReviewList");
		return result;
	}
}
