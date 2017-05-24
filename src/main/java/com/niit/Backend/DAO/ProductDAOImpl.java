package com.niit.Backend.DAO;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Model.Product;

@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override

	public List<Product> getAll() {
		return sessionFactory.getCurrentSession().createQuery("FROM Product").list();
	}

	@Override

	public void insert(Product p) {
		sessionFactory.getCurrentSession().persist(p);

	}

	@Override

	public void update(Product p) {

		sessionFactory.getCurrentSession().update(p);

	}

	@Override

	public void delete(int id) {

		sessionFactory.getCurrentSession().delete(getProduct(id));
	}

	@Override

	public Product getProduct(int id) {
		return sessionFactory.getCurrentSession().get(Product.class, id);
	}
	
	
	

	@Override
	public Product getProductByPrice(int productPrice) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product getProductByBand(int productPrice) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@Override
	public List<Product> getProductByCategory(String category) {
		// TODO Auto-generated method stub
		Query query =sessionFactory.getCurrentSession().createQuery("from Product WHERE productCategory=?");
		query.setParameter(0, category);
		return query.list();
	}
	
	

}