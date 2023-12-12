package com.n22.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {

	@RequestMapping("/cart")
	public ModelAndView getCart(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("username")== null) {
			mav.setViewName("redirect:/login");
			return mav;
		}

		mav.setViewName("cart");
		return mav;
	}
	
	@RequestMapping("/add-to-cart/{productID}")
	public ModelAndView addToCart(@PathVariable("productID") Integer productID, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		if(session.getAttribute("username")== null) {
			mav.setViewName("redirect:/login");
			return mav;
		}
		
		mav.setViewName("redirect:/detail/" + productID);
		System.out.println(productID);
		return mav;
	}
	
}
