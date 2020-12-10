package com.mycompany.myapp.review;

import java.util.List;

public interface ReviewService {
	public int insertReview(ReviewVO vo);
	public int deleteReview(int seq);
	public int updateReview(ReviewVO vo);
	public ReviewVO getReview(int seq);
	public List<ReviewVO> getReviewList();
}
 