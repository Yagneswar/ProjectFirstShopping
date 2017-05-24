package com.niit.Backend;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.Backend.DAO.ProductDAO;
import com.niit.Model.Product;

@Controller
public class ProductDetailController 
{

	@Autowired
	ProductDAO  prodao;
	@RequestMapping("/displayallproduct")
	public @ResponseBody List<Product> getallproduct()
	{
		return prodao.getAll();
	}
}

