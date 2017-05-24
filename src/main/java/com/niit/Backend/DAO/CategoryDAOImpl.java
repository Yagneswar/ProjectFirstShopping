package com.niit.Backend.DAO;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Model.Category;
import com.niit.Model.Product;

@Transactional
public class CategoryDAOImpl implements CategoryDAO {
 
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Category> getAll() {
		
		return sessionFactory.getCurrentSession().createQuery("FROM Category").list();
	}

	@Override
	public Category getCategory(int id) {
		
		return sessionFactory.getCurrentSession().get(Category.class, id);
	}

	@Override
	public List<Category> getdatafromname(String con) {
		// TODO Auto-generated method stub
		return null;
	}

}
