package com.n22.finalproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.n22.finalproject.model.Product;
import com.n22.finalproject.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/test-product")
	public ModelAndView testGetProduct() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test-product");
		System.out.println(productService.getAllProducts());
		return mav;
	}
	
	@RequestMapping("/detail/{productID}")
	public ModelAndView getProductDetail(@PathVariable("productID") Integer productID) {
		ModelAndView mav = new ModelAndView("detail");
		Product product = productService.getByProductID(productID);
		mav.addObject("product", product);
		return mav;
	}
}
