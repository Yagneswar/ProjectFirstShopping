package com.niit.Backend;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Backend.DAO.UserDAO;
import com.niit.Model.Product;
import com.niit.Model.User;

@Controller
public class UserController {
	
	@Autowired
	UserDAO r ;
	@RequestMapping(value = "/reg")
	public String gotreg(Model model){
		model.addAttribute("user", new User());
		return "reg";
	}
    
	@PostMapping(value = "/in")
	public String go(@Valid @ModelAttribute ("user") User user1,BindingResult bindingResult, Model model){
		if(bindingResult.hasErrors())
		{
			model.addAttribute("user", new User());
			return "reg";
		}
		
		r.insertUser(user1);	
		
		return "redirect:/";
	}
}
