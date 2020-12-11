package com.mycompany.myapp.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/inbreeze")
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "mainpage";
	}
	
	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public String viewPost(@PathVariable("id")int id, Model model) {
		ReviewVO reviewVO = reviewService.getReview(id);
		model.addAttribute("u", reviewVO);
		return "view";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String reviewlist(Model model) {
		model.addAttribute("list", reviewService.getReviewList());
		return "list";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(ReviewVO vo) {
		if(reviewService.insertReview(vo) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id")int id, Model model) {
		ReviewVO reviewVO = reviewService.getReview(id);
		model.addAttribute("u", reviewVO);
		return "editform";
	}

	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(ReviewVO vo) {
		if(reviewService.updateReview(vo) == 0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공!!!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		if(reviewService.deleteReview(id) == 0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공!!!");
		return "redirect:../list";
	}
	
}
