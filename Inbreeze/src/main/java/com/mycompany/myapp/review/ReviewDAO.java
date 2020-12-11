package com.mycompany.myapp.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
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


	public ReviewVO getReview(int seq) {
		return sqlSession.selectOne("Review.getReview", seq);
	}

	public List<ReviewVO> getReviewList() {
		return sqlSession.selectList("Review.getReviewList");
	}
}
