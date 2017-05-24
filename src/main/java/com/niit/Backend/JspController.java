package com.niit.Backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Backend.DAO.UserDAO;
import com.niit.Model.*;

@Controller
public class JspController {
	// Mapping for index page

	@RequestMapping(value = { "/index", "/" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	// Mapping for aboutus page

	@RequestMapping(value = { "/aboutus" })
	public ModelAndView aboutus() {
		ModelAndView mv = new ModelAndView("aboutus");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	// Mapping for contactus page

	@RequestMapping(value = { "/contactus" })
	public ModelAndView contactus() {
		ModelAndView mv = new ModelAndView("contactus");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	// Mapping for home page

	@RequestMapping(value = { "/home" })
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	// Mapping for register page

	
	// Mapping for login page

	@RequestMapping(value = { "/login" })
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	// Mapping for mensapparel page

	@RequestMapping(value = { "/mensapparel" })
	public ModelAndView mensapparel() {
		ModelAndView mv = new ModelAndView("mensapparel");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}

	// Mapping for womensapparel page

	@RequestMapping(value = { "/womensapparel" })
	public ModelAndView womensapparel() {
		ModelAndView mv = new ModelAndView("womensapparel");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	// Mapping for offers page

	@RequestMapping(value = { "/offers" })
	public ModelAndView offers() {
		ModelAndView mv = new ModelAndView("offers");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}

	// Mapping for appliances page

	@RequestMapping(value = { "/appliances" })
	public ModelAndView appliances() {
		ModelAndView mv = new ModelAndView("appliances");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	
	@RequestMapping(value = { "/admin" })
	public ModelAndView adminv() {
		ModelAndView mv = new ModelAndView("admin");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	@RequestMapping(value = { "/viewdetails" })
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView("viewdetails");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	
	@RequestMapping(value = { "/cartdetailview" })
	public ModelAndView viewout() {
		ModelAndView mv = new ModelAndView("cartdetailview");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	
	@RequestMapping(value = { "/springSecurity" })
	public ModelAndView viewot() {
		ModelAndView mv = new ModelAndView("springSecurity");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}	
	
	@Autowired
	UserDAO user;
	@RequestMapping(value={"/cart"})
	public ModelAndView getCart(@AuthenticationPrincipal User activeUser) {
		User customer = user.getCustomerByUsername(activeUser.getName());
		int cartId = customer.getCart().getCartId();
		ModelAndView mv = new ModelAndView("cart");
		mv.addObject("Hi!!", "My E-Commerce Website");
		mv.addObject("cartId", cartId);
		return mv;
	}
	
	@RequestMapping(value = { "/logout" })
	public ModelAndView logou() {
		ModelAndView mv = new ModelAndView("logout");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	
	@RequestMapping(value = { "/payment" })
	public ModelAndView payment() {
		ModelAndView mv = new ModelAndView("payment");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}
	
	@RequestMapping(value = { "/shipping" })
	public ModelAndView ship() {
		ModelAndView mv = new ModelAndView("shipping");
		mv.addObject("Hi!!", "My E-Commerce Website");
		return mv;
	}

	
	
	
}



	
	
