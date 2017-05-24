package com.niit.Backend.DAO;

import java.util.List;

import com.niit.Model.Category;

public interface CategoryDAO {
	
	List<Category> getAll();
	public Category getCategory(int id);
	public List<Category> getdatafromname (String con);


}
