package com.niit.Backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Backend.DAO.CategoryDAO;
import com.niit.Model.Category;
import com.niit.Model.Product;

@Controller
@RequestMapping("/cate")
public class CategoryController {
	
	@Autowired
	CategoryDAO cDAO;
	
	@RequestMapping(value = "/categ")
	public ModelAndView adminview() {
		ModelAndView mv = new ModelAndView("adminview");
		mv.addObject("categ", new Category());
		mv.addObject("categs", cDAO.getAll());
		return mv;
	}

}
