package com.mycompany.myapp.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	ReviewDAO reviewDAO;

	@Override
	public int insertReview(ReviewVO vo) {
		return reviewDAO.insertReview(vo);
	}
	@Override
	public int deleteReview(int seq) {
		return reviewDAO.deleteReview(seq);
	}
	@Override
	public int updateReview(ReviewVO vo) {
		return reviewDAO.updateReview(vo);
	}
	@Override
	public ReviewVO getReview(int seq) {
		return reviewDAO.getReview(seq);
	}
	@Override
	public List<ReviewVO> getReviewList() {
		return reviewDAO.getReviewList();
	}
}
