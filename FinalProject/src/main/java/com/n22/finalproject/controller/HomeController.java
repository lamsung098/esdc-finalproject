package com.n22.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.n22.finalproject.model.Product;
import com.n22.finalproject.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@Autowired
	ProductService productService;

	@RequestMapping({"/","/home","/index","","*"})
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		
		// Get all product and set to view
		List<Product> products = productService.getAllProducts();
		mav.addObject("listProducts", products);
		
		mav.setViewName("index");
		
		return mav;
	}
	
}
