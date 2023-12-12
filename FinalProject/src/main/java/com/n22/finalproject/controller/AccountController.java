package com.n22.finalproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.n22.finalproject.model.Account;
import com.n22.finalproject.model.Customer;
import com.n22.finalproject.service.AccountService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AccountController {
	
	@Autowired
	private AccountService accountService;

	@RequestMapping("/login")
	public ModelAndView loginPage(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("username") != null) {
			mav.setViewName("redirect:/");
		}
		else {
			mav.setViewName("login");
		}
		return mav;
	}
	
	@RequestMapping(value = "/register")
	public ModelAndView registerPage( HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("username") != null) {
			mav.setViewName("redirect:/");
		}
		else {
			mav.setViewName("register");
		}
		return mav;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("account") Account registerAccount,@ModelAttribute("customer") Customer guest ,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println(registerAccount);
		System.out.println(guest);
		mav.setViewName("test");
		return mav;
	}
	
	@RequestMapping("/submit-login")
	public ModelAndView submitLogin(@ModelAttribute("Account") Account account, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		if(accountService.getByUsername(account.getUsername()) == null) {
			mav.addObject("error", true);
			mav.setViewName("redirect:/login");
		}
		else {
			mav.addObject("user", account);
			session.setAttribute("username", account.getUsername());
			mav.setViewName("redirect:/home");
		}
		System.out.println(account);
		return mav;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		if(session.getAttribute("username") != null) {
			session.invalidate();
		}
		return "redirect:/";
	}
}
