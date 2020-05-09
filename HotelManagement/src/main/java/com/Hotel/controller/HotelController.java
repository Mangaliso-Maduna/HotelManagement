package com.Hotel.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Hotel.dao.ReviewsDAO;
import com.Hotel.model.BookingModel;
import com.Hotel.model.ReviewsModel;

@Controller
public class HotelController {
	
	@Autowired
	ReviewsDAO reviewDAO;
	
	@RequestMapping("/")
	public ModelAndView viewHome() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("booker", new BookingModel());
		return mv;
	}
	
	@RequestMapping("/reviews")
	public ModelAndView viewReviewPage() {
		ModelAndView mv = new ModelAndView("reviews");
		List<ReviewsModel> list = reviewDAO.findAll();
		mv.addObject("reviews", list);
		System.out.println(list);
		return mv;
	}
	
	@RequestMapping(value = "/send", method = RequestMethod.POST)
	public ModelAndView BookIn(@Valid @ModelAttribute BookingModel booking, BindingResult result) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("booker", booking);
		
		if (result.hasErrors())
			mv.setViewName("index");
		else {
			mv.setViewName("index");
		}

		return mv;
	}
}
